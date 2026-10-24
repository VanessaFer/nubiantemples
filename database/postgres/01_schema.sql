DROP TABLE IF EXISTS "abito" CASCADE;
CREATE TABLE "abito" (
  "codice_abito" integer NOT NULL,
  "codice_abito_nuovo" varchar(45) DEFAULT NULL,
  "tipologia_abito" varchar(45) DEFAULT NULL,
  "nome_abito" varchar(255) DEFAULT NULL,
  "descrizione_abito" varchar(255) DEFAULT NULL,
  PRIMARY KEY ("codice_abito")
);

DROP TABLE IF EXISTS "accessorio" CASCADE;
CREATE TABLE "accessorio" (
  "codice_accessorio" integer NOT NULL,
  "nome_accessorio" varchar(255) DEFAULT NULL,
  "descrizione_accessorio" varchar(255) DEFAULT NULL,
  PRIMARY KEY ("codice_accessorio")
);

DROP TABLE IF EXISTS "ambiente" CASCADE;
CREATE TABLE "ambiente" (
  "codice_ambiente" integer NOT NULL,
  "tipo_ambiente" varchar(255) DEFAULT NULL,
  "epoca_costruzione_ambiente" varchar(255) DEFAULT NULL,
  "committente_ambiente" varchar(255) DEFAULT NULL,
  "codice_tempio" integer DEFAULT NULL,
  PRIMARY KEY ("codice_ambiente")
);

DROP TABLE IF EXISTS "appartiene" CASCADE;
CREATE TABLE "appartiene" (
  "codice_appartiene" integer NOT NULL,
  "codice_personaggio" integer DEFAULT NULL,
  "codice_accessorio" integer DEFAULT NULL,
  PRIMARY KEY ("codice_appartiene")
);

DROP TABLE IF EXISTS "bibliografia_epiteto" CASCADE;
CREATE TABLE "bibliografia_epiteto" (
  "codice_bibliografia_epiteto" integer NOT NULL,
  "titolo_bibliografia_epiteto" varchar(255) DEFAULT NULL,
  "autore_bibliografia_epiteto" varchar(255) DEFAULT NULL,
  "anno_pubblicazione_bibliografia_epiteto" integer DEFAULT NULL,
  "volume_bibliografia_epiteto" varchar(45) DEFAULT NULL,
  "pagina_bibliografia_epiteto" integer DEFAULT NULL,
  "codice_epiteto" integer DEFAULT NULL,
  PRIMARY KEY ("codice_bibliografia_epiteto")
);

DROP TABLE IF EXISTS "bibliografia_scena" CASCADE;
CREATE TABLE "bibliografia_scena" (
  "codice_bibliografia_scena" integer NOT NULL,
  "serie_bibliografia_scena" varchar(255) DEFAULT NULL,
  "titolo_b_s" varchar(255) DEFAULT NULL,
  "volume_bibliografia_scena" varchar(255) DEFAULT NULL,
  "autore_b_s" varchar(255) DEFAULT NULL,
  "anno_pubblicazione_b_s" integer DEFAULT NULL,
  "n_pagina_b_s" varchar(255) DEFAULT NULL,
  "n_tavola" varchar(255) DEFAULT NULL,
  PRIMARY KEY ("codice_bibliografia_scena")
);

DROP TABLE IF EXISTS "bibliografia_tempio" CASCADE;
CREATE TABLE "bibliografia_tempio" (
  "codice_bibliografia_tempio" integer NOT NULL,
  "autore_bibliografia_tempio" varchar(255) DEFAULT NULL,
  "titolo_bibliografia_tempio" varchar(255) DEFAULT NULL,
  "rivista_bibliografia_tempio" varchar(255) DEFAULT NULL,
  "volume_bibliografia_tempio" varchar(45) DEFAULT NULL,
  "anno_pubblicazione_bibliografia_tempio" integer DEFAULT NULL,
  "luogo_pubblicazione_bibliografia_tempio" varchar(45) DEFAULT NULL,
  "pagine_bibliografia_tempio" varchar(45) DEFAULT NULL,
  PRIMARY KEY ("codice_bibliografia_tempio")
);

DROP TABLE IF EXISTS "citata" CASCADE;
CREATE TABLE "citata" (
  "codice_citata" integer NOT NULL,
  "codice_scena" integer DEFAULT NULL,
  "codice_bibliografia_scena" integer DEFAULT NULL,
  PRIMARY KEY ("codice_citata")
);

DROP TABLE IF EXISTS "corona" CASCADE;
CREATE TABLE "corona" (
  "codice_corona" integer NOT NULL,
  "codice_corona_nuovo" varchar(45) NOT NULL,
  "codice_corona_Gauthier" varchar(45) DEFAULT NULL,
  "tipologia_corona" varchar(255) DEFAULT NULL,
  "descrizione_corona" varchar(900) DEFAULT NULL,
  PRIMARY KEY ("codice_corona")
);

DROP TABLE IF EXISTS "costruito" CASCADE;
CREATE TABLE "costruito" (
  "codice_costruzione" integer NOT NULL,
  "codice_tempio" integer DEFAULT NULL,
  "codice_sovrano" integer DEFAULT NULL,
  PRIMARY KEY ("codice_costruzione")
);

DROP TABLE IF EXISTS "dedicato" CASCADE;
CREATE TABLE "dedicato" (
  "codice_dedicato" integer NOT NULL,
  "codice_tempio" integer DEFAULT NULL,
  "codice_divinita" integer DEFAULT NULL,
  PRIMARY KEY ("codice_dedicato")
);

DROP TABLE IF EXISTS "dinastia" CASCADE;
CREATE TABLE "dinastia" (
  "codice_dinastia" integer NOT NULL,
  "nome_dinastia" varchar(45) DEFAULT NULL,
  "anni" varchar(45) DEFAULT NULL,
  "codice_epoca" integer DEFAULT NULL,
  PRIMARY KEY ("codice_dinastia")
);

DROP TABLE IF EXISTS "divinita_elenco" CASCADE;
CREATE TABLE "divinita_elenco" (
  "codice_divinita" integer NOT NULL,
  "nome_divinita" varchar(45) DEFAULT NULL,
  PRIMARY KEY ("codice_divinita")
);

DROP TABLE IF EXISTS "divinita_personaggio" CASCADE;
CREATE TABLE "divinita_personaggio" (
  "codice_divinita" integer NOT NULL,
  "codice_personaggio_divinita" integer NOT NULL,
  "nome_divinita" varchar(45) DEFAULT NULL,
  "codice_dono_divinita" integer DEFAULT NULL,
  "codice_scena" integer DEFAULT NULL,
  PRIMARY KEY ("codice_personaggio_divinita","codice_divinita")
);

DROP TABLE IF EXISTS "dono" CASCADE;
CREATE TABLE "dono" (
  "codice_dono" integer NOT NULL,
  "nome_dono" varchar(45) DEFAULT NULL,
  "verbo_dono" varchar(45) DEFAULT NULL,
  PRIMARY KEY ("codice_dono")
);

DROP TABLE IF EXISTS "elemento_architettonico" CASCADE;
CREATE TABLE "elemento_architettonico" (
  "codice_e_a" integer NOT NULL,
  "tipo_e_a" varchar(255) DEFAULT NULL,
  "orientamento_spaziale" varchar(255) DEFAULT NULL,
  "epoca_realizzazione_e_a" varchar(255) DEFAULT NULL,
  "committente_e_a" varchar(255) DEFAULT NULL,
  "codice_ambiente" integer DEFAULT NULL,
  PRIMARY KEY ("codice_e_a")
);

DROP TABLE IF EXISTS "epiteto" CASCADE;
CREATE TABLE "epiteto" (
  "codice_epiteto" integer NOT NULL,
  "epiteto_traslitterato" varchar(255) DEFAULT NULL,
  "epiteto_tradotto" varchar(255) DEFAULT NULL,
  "epiteto_note" varchar(255) DEFAULT NULL,
  PRIMARY KEY ("codice_epiteto")
);

DROP TABLE IF EXISTS "epoca" CASCADE;
CREATE TABLE "epoca" (
  "codice_epoca" integer NOT NULL,
  "regno" varchar(255) DEFAULT NULL,
  "anni" varchar(255) DEFAULT NULL,
  PRIMARY KEY ("codice_epoca")
);

DROP TABLE IF EXISTS "indossa" CASCADE;
CREATE TABLE "indossa" (
  "codice_indossa" integer NOT NULL,
  "codice_personaggio" integer DEFAULT NULL,
  "codice_abito" integer DEFAULT NULL,
  PRIMARY KEY ("codice_indossa")
);

DROP TABLE IF EXISTS "menzionato" CASCADE;
CREATE TABLE "menzionato" (
  "codice_mezionato" integer NOT NULL,
  "codice_tempio" integer NOT NULL,
  "codice_bibliografia_tempio" integer NOT NULL,
  PRIMARY KEY ("codice_mezionato","codice_tempio","codice_bibliografia_tempio")
);

DROP TABLE IF EXISTS "parte" CASCADE;
CREATE TABLE "parte" (
  "codice_parte" integer NOT NULL,
  "tipologia_parte" varchar(255) DEFAULT NULL,
  "codice_e_a" integer DEFAULT NULL,
  PRIMARY KEY ("codice_parte")
);

DROP TABLE IF EXISTS "personaggio" CASCADE;
CREATE TABLE "personaggio" (
  "codice_personaggio" integer NOT NULL,
  "nome_personaggio" varchar(255) DEFAULT NULL,
  "tipologia_personaggio" varchar(255) DEFAULT NULL,
  "donatore_ricevente" varchar(45) DEFAULT NULL,
  "ordine_comparizione" integer DEFAULT NULL,
  "caratteristiche_personaggio" varchar(255) DEFAULT NULL,
  "seduto_stante" varchar(45) DEFAULT NULL,
  "codice_corona" integer DEFAULT NULL,
  "codice_scena" integer DEFAULT NULL,
  "codice_tempio" integer DEFAULT NULL,
  PRIMARY KEY ("codice_personaggio")
);

DROP TABLE IF EXISTS "possiede" CASCADE;
CREATE TABLE "possiede" (
  "codice_possiede" integer NOT NULL,
  "codice_personaggio" integer DEFAULT NULL,
  "codice_epiteto" integer DEFAULT NULL,
  PRIMARY KEY ("codice_possiede")
);

DROP TABLE IF EXISTS "riceve" CASCADE;
CREATE TABLE "riceve" (
  "codice_riceve" integer NOT NULL,
  "codice_sovrano" integer DEFAULT NULL,
  "codice_dono" integer DEFAULT NULL,
  PRIMARY KEY ("codice_riceve")
);

DROP TABLE IF EXISTS "scena" CASCADE;
CREATE TABLE "scena" (
  "codice_scena" integer NOT NULL,
  "sigla_scena" varchar(10) DEFAULT NULL,
  "n_scena" integer DEFAULT NULL,
  "registro" integer DEFAULT NULL,
  "codice_titolo_scena" integer DEFAULT NULL,
  "offerta_iconografia" varchar(255) DEFAULT NULL,
  "n_personaggi" integer DEFAULT NULL,
  "oggetti_presenti" varchar(255) DEFAULT NULL,
  "stato_scena" varchar(255) DEFAULT NULL,
  "codice_parte" integer DEFAULT NULL,
  "codice_tempio" integer DEFAULT NULL,
  PRIMARY KEY ("codice_scena")
);

DROP TABLE IF EXISTS "sovrano_elenco" CASCADE;
CREATE TABLE "sovrano_elenco" (
  "codice_sovrano_elenco" integer NOT NULL,
  "nome_sovrano_elenco" varchar(45) DEFAULT NULL,
  PRIMARY KEY ("codice_sovrano_elenco")
);

DROP TABLE IF EXISTS "sovrano_personaggio" CASCADE;
CREATE TABLE "sovrano_personaggio" (
  "codice_sovrano" integer NOT NULL,
  "codice_personaggio_sovrano" integer NOT NULL,
  "codice_scena_sovrano" integer DEFAULT NULL,
  PRIMARY KEY ("codice_sovrano","codice_personaggio_sovrano")
);

DROP TABLE IF EXISTS "sovrano_tempio" CASCADE;
CREATE TABLE "sovrano_tempio" (
  "codice_sovrano" integer NOT NULL,
  "nome_sovrano" varchar(45) DEFAULT NULL,
  "anni" varchar(45) DEFAULT NULL,
  "codice_epoca" integer DEFAULT NULL,
  "codice_dinastia" integer DEFAULT NULL,
  PRIMARY KEY ("codice_sovrano")
);

DROP TABLE IF EXISTS "tempio" CASCADE;
CREATE TABLE "tempio" (
  "codice_tempio" integer NOT NULL,
  "nome_tempio" varchar(255) NOT NULL,
  "regione_antica" varchar(255) DEFAULT NULL,
  "luogo_antico" varchar(255) DEFAULT NULL,
  "regione_odierna" varchar(255) DEFAULT NULL,
  "luogo_odierno" varchar(255) DEFAULT NULL,
  "latitude" varchar(45) DEFAULT NULL,
  "longitude" varchar(45) DEFAULT NULL,
  "period" varchar(45) DEFAULT NULL,
  PRIMARY KEY ("codice_tempio")
);

DROP TABLE IF EXISTS "tempio_libro" CASCADE;
CREATE TABLE "tempio_libro" (
  "codice_tempio_libro" integer NOT NULL,
  "codice_tempio" integer DEFAULT NULL,
  "codice_bibliografia_tempio" integer DEFAULT NULL,
  PRIMARY KEY ("codice_tempio_libro")
);

DROP TABLE IF EXISTS "titolo_scena" CASCADE;
CREATE TABLE "titolo_scena" (
  "codice_titolo_scena" integer NOT NULL,
  "offerta_titolo_scena" varchar(255) DEFAULT NULL,
  "verbo_titolo_scena" varchar(255) DEFAULT NULL,
  PRIMARY KEY ("codice_titolo_scena")
);
