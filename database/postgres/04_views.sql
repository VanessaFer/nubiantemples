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

-- Viste per la pagina Database (sezioni Deities e Rooms/Bibliography): prima erano Excel.
CREATE OR REPLACE VIEW v_deity AS
SELECT s.sigla_scena AS "sceneAcronym", pe.nome_personaggio AS "deityName", pe.tipologia_personaggio AS "typology",
       pe.donatore_ricevente AS "giverRecipient", pe.ordine_comparizione AS "orderofAppearance",
       pe.caratteristiche_personaggio AS "aspect", pe.seduto_stante AS "seatedStanding",
       s.offerta_iconografia AS "iconography", pe.codice_scena, pe.codice_tempio,
       c.tipologia_corona AS "crown", c.descrizione_corona AS "crownDescription",
       ab.nome_abito AS "clothes", ab.descrizione_abito AS "clothesDescription",
       d.nome_dono AS "deityGift", d.verbo_dono AS "deityGiftVerb"
FROM personaggio pe
LEFT JOIN scena s ON s.codice_scena = pe.codice_scena
LEFT JOIN corona c ON c.codice_corona = pe.codice_corona
LEFT JOIN indossa i ON i.codice_personaggio = pe.codice_personaggio
LEFT JOIN abito ab ON ab.codice_abito = i.codice_abito
LEFT JOIN divinita_personaggio dp ON dp.codice_personaggio_divinita = pe.codice_personaggio
LEFT JOIN dono d ON d.codice_dono = dp.codice_dono_divinita
ORDER BY pe.codice_personaggio;
CREATE OR REPLACE VIEW v_deity_epithets AS
SELECT s.sigla_scena AS "sceneAcronym", pe.codice_personaggio, pe.nome_personaggio AS "deityName", pe.codice_scena,
       e.epiteto_traslitterato AS "epithet", e.epiteto_tradotto AS "translation", e.epiteto_note AS "notes",
       b.titolo_bibliografia_epiteto AS "epithetBibliographyBook", b.autore_bibliografia_epiteto AS "epithetBibliographyAuthor",
       b.anno_pubblicazione_bibliografia_epiteto AS "epithetBibliographyYear", b.volume_bibliografia_epiteto AS "epithetBibliographyVolume",
       b.pagina_bibliografia_epiteto AS "epithetBibliographyPage"
FROM personaggio pe
LEFT JOIN scena s ON s.codice_scena = pe.codice_scena
LEFT JOIN possiede po ON po.codice_personaggio = pe.codice_personaggio
LEFT JOIN epiteto e ON e.codice_epiteto = po.codice_epiteto
LEFT JOIN bibliografia_epiteto b ON b.codice_epiteto = e.codice_epiteto
ORDER BY pe.codice_personaggio, po.codice_possiede, b.codice_bibliografia_epiteto;
CREATE OR REPLACE VIEW v_deity_accessories AS
SELECT s.sigla_scena AS "sceneAcronym", pe.codice_personaggio, pe.nome_personaggio AS "deityName", a.nome_accessorio AS "accessory"
FROM personaggio pe
LEFT JOIN scena s ON s.codice_scena = pe.codice_scena
LEFT JOIN appartiene ap ON ap.codice_personaggio = pe.codice_personaggio
LEFT JOIN accessorio a ON a.codice_accessorio = ap.codice_accessorio
ORDER BY pe.codice_personaggio, ap.codice_appartiene;
CREATE OR REPLACE VIEW v_deity_bibliography AS
SELECT s.sigla_scena AS "sceneAcronym", pe.codice_personaggio, pe.nome_personaggio AS "deityName",
       b.serie_bibliografia_scena AS "serieTitle", b.titolo_b_s AS "bookTitle", b.volume_bibliografia_scena AS "volume",
       b.autore_b_s AS "author", b.anno_pubblicazione_b_s AS "publicationYear", b.n_pagina_b_s AS "page", b.n_tavola AS "plate"
FROM personaggio pe
LEFT JOIN scena s ON s.codice_scena = pe.codice_scena
LEFT JOIN citata ci ON ci.codice_scena = s.codice_scena
LEFT JOIN bibliografia_scena b ON b.codice_bibliografia_scena = ci.codice_bibliografia_scena
ORDER BY pe.codice_personaggio, ci.codice_citata;
CREATE OR REPLACE VIEW v_rooms AS
SELECT s.sigla_scena AS "sceneAcronym", a.tipo_ambiente AS "room", a.epoca_costruzione_ambiente AS "epoch",
       e.tipo_e_a AS "architecturalFeature", e.orientamento_spaziale AS "orientation", p.tipologia_parte AS "roomPart",
       s.offerta_iconografia AS "iconography", t.offerta_titolo_scena AS "sceneTitle", t.verbo_titolo_scena AS "sceneTitleVerb"
FROM parte p
LEFT JOIN scena s ON s.codice_parte = p.codice_parte
LEFT JOIN titolo_scena t ON t.codice_titolo_scena = s.codice_titolo_scena
LEFT JOIN elemento_architettonico e ON e.codice_e_a = p.codice_e_a
LEFT JOIN ambiente a ON a.codice_ambiente = e.codice_ambiente
ORDER BY s.codice_scena, p.codice_parte;
CREATE OR REPLACE VIEW v_temple_bibliography AS
SELECT te.nome_tempio AS "temple", b.autore_bibliografia_tempio AS "author", b.titolo_bibliografia_tempio AS "title",
       b.rivista_bibliografia_tempio AS "publication", b.volume_bibliografia_tempio AS "volume",
       b.anno_pubblicazione_bibliografia_tempio AS "year", b.luogo_pubblicazione_bibliografia_tempio AS "place",
       b.pagine_bibliografia_tempio AS "page"
FROM bibliografia_tempio b
LEFT JOIN tempio_libro tl ON tl.codice_bibliografia_tempio = b.codice_bibliografia_tempio
LEFT JOIN tempio te ON te.codice_tempio = tl.codice_tempio
ORDER BY b.codice_bibliografia_tempio;
