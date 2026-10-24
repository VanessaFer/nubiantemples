-- Viste usate dalla webapp: dopo aver ricaricato le tabelle (DROP ... CASCADE in 01_schema.sql) vengono ricreate qui.
-- Viste usate dalla webapp: riproducono le tabelle che prima erano esportate in Excel.
-- (LEFT JOIN: le scene senza personaggi o senza bibliografia compaiono comunque, con campi vuoti.)
-- Le colonne hanno i nomi (in inglese) mostrati nell'app.

CREATE OR REPLACE VIEW v_scene_overview AS
SELECT s.codice_scena,
       s.sigla_scena            AS "sceneAcronym",
       s.registro               AS "register",
       s.n_scena                AS "sceneNumber",
       t.offerta_titolo_scena   AS "sceneTitle",
       t.verbo_titolo_scena     AS "sceneTitleVerb",
       s.offerta_iconografia    AS "iconography",
       s.n_personaggi           AS "charactersNumber",
       s.oggetti_presenti       AS "sceneObjects",
       s.stato_scena            AS "status",
       p.tipologia_parte        AS "roomPart",
       e.tipo_e_a               AS "architecturalFeature",
       e.orientamento_spaziale  AS "orientation",
       a.tipo_ambiente          AS "room",
       te.nome_tempio           AS "temple"
FROM scena s
LEFT JOIN titolo_scena t             ON t.codice_titolo_scena = s.codice_titolo_scena
LEFT JOIN parte p                    ON p.codice_parte = s.codice_parte
LEFT JOIN elemento_architettonico e  ON e.codice_e_a = p.codice_e_a
LEFT JOIN ambiente a                 ON a.codice_ambiente = e.codice_ambiente
LEFT JOIN tempio te                  ON te.codice_tempio = s.codice_tempio
ORDER BY s.codice_scena;

CREATE OR REPLACE VIEW v_scene_characters AS
SELECT s.codice_scena,
       s.sigla_scena               AS "sceneAcronym",
       pe.tipologia_personaggio    AS "characterType",
       pe.nome_personaggio         AS "name",
       pe.donatore_ricevente       AS "giverRecipient",
       pe.ordine_comparizione      AS "order",
       pe.caratteristiche_personaggio AS "appearance",
       pe.seduto_stante            AS "posture",
       c.tipologia_corona          AS "crown",
       c.descrizione_corona        AS "crownDescription"
FROM scena s
LEFT JOIN personaggio pe ON pe.codice_scena = s.codice_scena
LEFT JOIN corona c       ON c.codice_corona = pe.codice_corona
ORDER BY s.codice_scena, pe.codice_personaggio;

CREATE OR REPLACE VIEW v_scene_bibliography AS
SELECT s.codice_scena,
       s.sigla_scena               AS "sceneAcronym",
       b.serie_bibliografia_scena  AS "serieTitle",
       b.titolo_b_s                AS "bookTitle",
       b.volume_bibliografia_scena AS "volume",
       b.autore_b_s                AS "author",
       b.anno_pubblicazione_b_s    AS "publicationYear",
       b.n_pagina_b_s              AS "page",
       b.n_tavola                  AS "plate"
FROM scena s
LEFT JOIN citata ci               ON ci.codice_scena = s.codice_scena
LEFT JOIN bibliografia_scena b    ON b.codice_bibliografia_scena = ci.codice_bibliografia_scena
ORDER BY s.codice_scena, ci.codice_citata;
