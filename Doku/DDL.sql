-- Erstellen der Tabellen:
CREATE TABLE benutzer (
	bname			VARCHAR(200)	NOT NULL,
	email			VARCHAR(200) 	NOT NULL UNIQUE,
	passwort		VARCHAR(200)    NOT NULL,
	vorname			VARCHAR(150) 	NOT NULL,
	nachame			VARCHAR(150) 	NOT NULL,
	strasse			VARCHAR(255) 	NOT NULL,
	plz				INTEGER 		NOT NULL,
	ort				VARCHAR(200) 	NOT NULL,
	land			VARCHAR(200)    NOT NULL,
	geschlecht		VARCHAR(1)		NOT NULL,
	bbild			VARCHAR(250),
	PRIMARY KEY (bname)
);

CREATE TABLE kategorie (
	kname			VARCHAR(200)	NOT NULL UNIQUE,
	kbild			VARCHAR(200)	NOT NULL UNIQUE,
	beschreibung 	VARCHAR(250)	NOT NULL,
	PRIMARY KEY (kname)
);

CREATE TABLE beitrag (
	bid			INTEGER				NOT NULL AUTO_INCREMENT,
	bname		VARCHAR(200) 		NOT NULL,
	title		VARCHAR(250) 		NOT NULL,
	bdatum		DATE				NOT NULL,
	text		TEXT				NOT NULL,
	bild		VARCHAR(250)		NOT NULL,
	kname		VARCHAR(200)		NOT NULL,
	PRIMARY KEY (bid),
	FOREIGN KEY (bname) REFERENCES benutzer(bname) ON UPDATE CASCADE,
	FOREIGN KEY (kname) REFERENCES kategorie(kname)
);

CREATE TABLE kommentar (
	kid			INTEGER 		NOT NULL AUTO_INCREMENT,
	kdatum		DATE			NOT NULL,
	ktext		TEXT			NOT NULL,
	ukid		INTEGER,
	PRIMARY KEY (kid),
	FOREIGN KEY (ukid) REFERENCES kommentar(kid)
);

CREATE TABLE erstellt (
	bid			INTEGER			NOT NULL,
	kid			INTEGER			NOT NULL,
	bname		VARCHAR(200)	NOT NULL,
	PRIMARY KEY (bid, kid, bname),
	FOREIGN KEY (bid) REFERENCES beitrag(bid) ON DELETE CASCADE,
	FOREIGN KEY (kid) REFERENCES kommentar(kid),
	FOREIGN KEY (bname) REFERENCES benutzer(bname) ON UPDATE CASCADE
);

CREATE TABLE bewertung (
	bbid		INTEGER			NOT NULL  AUTO_INCREMENT,
	bid			INTEGER			NOT NULL,
	anzahl		INTEGER			NOT NULL,
	wert		TINYINT			NOT NULL,
	PRIMARY KEY (bbid, bid),
	FOREIGN KEY (bid) REFERENCES beitrag(bid) ON DELETE CASCADE 
);

-- Inserts:
INSERT INTO benutzer VALUES('ms', 'ms@hotmail.com', 'ms', 'markus', 'seabrooker', 'Strasse', 1130, 'Wien', 'Austria', 'm', null);
INSERT INTO kategorie VALUES ('Mehlspeisen', 'mehlspeisen.jpg', 'Lecker lecker Mehlspeisen');
INSERT INTO beitrag(bname, title, bdatum, text, bild, kname) VALUES ('ms', 'Schokoladenkuchen', SYSDATE(), 'Lecker Lecker Schoko', 'schoko.jpg', 'Mehlspeisen');
INSERT INTO beitrag(bname, title, bdatum, text, bild, kname) VALUES ('ms', 'Bananenkuchen', SYSDATE(), 'Lecker Lecker Banane', 'banane.jpg', 'Mehlspeisen');
INSERT INTO kommentar (kdatum, ktext) VALUES (SYSDATE(), 'Echt supa Kuchen!'); 
INSERT INTO kommentar (kdatum, ktext, ukid) VALUES (SYSDATE(), 'Der Kuchen ist wirklich supa!', 1); 
INSERT INTO erstellt VALUES (1, 1, 'ms');
INSERT INTO bewertung(anzahl, wert, bid) VALUES (1, 5, 1);

DROP TABLE bewertung;
DROP TABLE erstellt;
DROP TABLE kommentar;
DROP TABLE beitrag;
DROP TABLE kategorie;
DROP TABLE benutzer;
