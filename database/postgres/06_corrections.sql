-- Correzioni di testo fatte nei fogli Excel dopo l'export del dump MySQL.
-- Il database MySQL le contiene ancora nella versione precedente: qui le applichiamo
-- dopo ogni caricamento, così Supabase coincide con gli Excel (fonte di riferimento).

-- 1) "human appearance" -> "human" (410 personaggi)
UPDATE personaggio
SET caratteristiche_personaggio = 'human'
WHERE caratteristiche_personaggio = 'human appearance';

-- 2) doppi spazi nelle descrizioni degli oggetti di scena (2 scene)
UPDATE scena
SET oggetti_presenti = regexp_replace(oggetti_presenti, '\s{2,}', ' ', 'g')
WHERE oggetti_presenti ~ '\s{2,}';

-- 3) doppi spazi negli autori della bibliografia dei templi
UPDATE bibliografia_tempio
SET autore_bibliografia_tempio = regexp_replace(autore_bibliografia_tempio, ' {2,}', ' ', 'g')
WHERE autore_bibliografia_tempio ~ ' {2,}';
