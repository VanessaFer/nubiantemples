"""Converte un dump MySQL (esportato da Workbench) in SQL per PostgreSQL/Supabase.

Uso:
    python scripts/convert_mysql_dump.py <dump_mysql.sql> database/postgres

Scrive 01_schema.sql, 02_data.sql e 03_constraints.sql nella cartella indicata.
Le viste (04_views.sql) e la sicurezza (05_security.sql) sono scritte a mano e
NON vengono toccate.
"""
import re, sys, pathlib

src = pathlib.Path(sys.argv[1]).read_text(encoding="utf-8")
RENAME = {  # correzioni di refusi / caratteri non ASCII negli identificatori
    "codice_personaggio_divinità": "codice_personaggio_divinita",
    "codice_bibligorafia_scena": "codice_bibliografia_scena",
}
def fix_ident(s):
    for a, b in RENAME.items():
        s = s.replace(a, b)
    return s

TYPE = [
    (r"\btinyint\(1\)", "boolean"), (r"\btinyint\b", "smallint"),
    (r"\bint\b", "integer"), (r"\bdouble\b", "double precision"),
    (r"\bdatetime\b", "timestamp"), (r"\blongtext\b|\bmediumtext\b", "text"),
]

tables = re.findall(r"CREATE TABLE `(\w+)` \((.*?)\) ENGINE=", src, flags=re.S)
ddl, fks, order = [], [], []
for name, body in tables:
    order.append(name)
    cols, pk = [], None
    for line in body.strip().splitlines():
        line = line.strip().rstrip(",")
        if not line:
            continue
        if line.startswith("PRIMARY KEY"):
            pk = re.search(r"\((.*)\)", line).group(1)
        elif line.startswith(("UNIQUE KEY", "KEY ")):
            continue
        elif line.startswith("CONSTRAINT"):
            m = re.match(r"CONSTRAINT `(\w+)` FOREIGN KEY \((.*?)\) REFERENCES `(\w+)` \((.*?)\)", line)
            cname, c, rt, rc = m.groups()
            fks.append(f'ALTER TABLE "{name}" ADD CONSTRAINT "{fix_ident(cname)}" FOREIGN KEY ({c.replace("`", chr(34))}) '
                       f'REFERENCES "{rt}" ({rc.replace("`", chr(34))});')
        else:
            line = re.sub(r"\s+COMMENT\s+'(?:[^']|'')*'", "", line)
            line = re.sub(r"\s+(CHARACTER SET \w+|COLLATE \w+)", "", line)
            line = re.sub(r"\bAUTO_INCREMENT\b", "", line)
            for a, b in TYPE:
                line = re.sub(a, b, line)
            line = re.sub(r"`(\w+)`", r'"\1"', line, count=1)
            cols.append("  " + line)
    if pk:
        cols.append(f"  PRIMARY KEY ({pk.replace('`', chr(34))})")
    ddl.append(f'DROP TABLE IF EXISTS "{name}" CASCADE;\nCREATE TABLE "{name}" (\n' + ",\n".join(cols) + "\n);")

def mysql_to_pg_values(s):
    # \' -> '' ; \\ -> \ ; \n, \r, \t -> caratteri veri; \" -> "
    out, i = [], 0
    while i < len(s):
        c = s[i]
        if c == "\\" and i + 1 < len(s):
            n = s[i + 1]
            out.append({"'": "''", "\\": "\\", "n": "\n", "r": "\r", "t": "\t", '"': '"', "0": "", "Z": "\x1a"}.get(n, n))
            i += 2
        else:
            out.append(c); i += 1
    return "".join(out)

inserts = []
for m in re.finditer(r"INSERT INTO `(\w+)` VALUES (.*?);\n", src, flags=re.S):
    t, vals = m.groups()
    inserts.append(f'INSERT INTO "{t}" VALUES {mysql_to_pg_values(vals)};')

out = pathlib.Path(sys.argv[2]); out.mkdir(exist_ok=True)
(out / "01_schema.sql").write_text(fix_ident("\n\n".join(ddl)) + "\n", encoding="utf-8")
(out / "02_data.sql").write_text("SET client_encoding = 'UTF8';\n" + fix_ident("\n".join(inserts)) + "\n", encoding="utf-8")
(out / "03_constraints.sql").write_text(fix_ident("\n".join(fks)) + "\n", encoding="utf-8")
print(len(tables), "tabelle,", len(inserts), "blocchi INSERT,", len(fks), "FK")
