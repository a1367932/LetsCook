-- Erstellen der Tabellen:
CREATE TABLE benutzer (
	bname			VARCHAR(200)	 NOT NULL,
	email			VARCHAR(200) 	 NOT NULL UNIQUE,
	passwort		VARCHAR(200)     NOT NULL,
	vorname			VARCHAR(150) 	 NOT NULL,
	nachname		VARCHAR(150)	 NOT NULL,
	geburtsdatum	DATE			 NOT NULL,
	strasse			VARCHAR(255) 	 NOT NULL,
	hausnummer		VARCHAR(100)	 NOT NULL,
	plz				INTEGER 		 NOT NULL,
	ort				VARCHAR(200) 	 NOT NULL,
	land			VARCHAR(200)     NOT NULL,
	geschlecht		VARCHAR(1)		 NOT NULL,
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
	titel		VARCHAR(250) 		NOT NULL,
	bdatum		DATE				NOT NULL,
	btext		TEXT				NOT NULL,
	bild		VARCHAR(250)		NOT NULL,
	zutaten		VARCHAR(250)		NOT NULL,
	portion		INTEGER				NOT NULL,
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
INSERT INTO benutzer VALUES('Max', 'max@hotmail.com', 'Max', 'Maximilian', 'Mustermann', '1992-06-09', 'Jägerstrasse', '123', 1130, 'Wien', 'Austria', 'm', 'Max.jpg');

INSERT INTO kategorie VALUES ('Frühstück', 'fruestueck.jpg', 'Lecker lecker Fruestueck');
INSERT INTO kategorie VALUES ('Vorspeise', 'vorspeise.jpg', 'Lecker lecker Vorspeise');
INSERT INTO kategorie VALUES ('Hauptspeise', 'hauptspeise.jpg', 'Lecker lecker Hauptspeise');
INSERT INTO kategorie VALUES ('Dessert', 'dessert.jpg', 'Lecker lecker Dessert');
INSERT INTO kategorie VALUES ('Beilage', 'beilage.jpg', 'Lecker lecker Beilage');
INSERT INTO kategorie VALUES ('Salat', 'salat.jpg', 'Lecker lecker Salat');

INSERT INTO beitrag(bname, titel, bdatum, btext, bild, zutaten, portion, kname) VALUES ('Max', 'Schokoladenkuchen', SYSDATE(), 'Lecker Lecker Schoko', 'Schokoladenkuchen.jpg', 'Schoko, Mehl, Zucker', 1, 'Dessert');
INSERT INTO beitrag(bname, titel, bdatum, btext, bild, zutaten, portion, kname) VALUES ('Max', 'Bananenkuchen', SYSDATE(), 'Lecker Lecker Banane', 'Bananenkuchen.jpg', 'Schoko, Mehl, Zucker', 1, 'Dessert');
INSERT INTO beitrag(bname, titel, bdatum, btext, bild, zutaten, portion, kname) VALUES ('Max', 'Käsekuchen', SYSDATE(), 'Lecker Lecker Käse', 'Käsekuchen.jpg', 'Schoko, Mehl, Zucker', 1, 'Dessert');
INSERT INTO beitrag(bname, titel, bdatum, btext, bild, zutaten, portion, kname) VALUES ('Max', 'Zitronenkuchen', SYSDATE(), 'Lecker Lecker Zitrone', 'Zitronenkuchen.jpg', 'Schoko, Mehl, Zucker', 1, 'Dessert');
INSERT INTO beitrag(bname, titel, bdatum, btext, bild, zutaten, portion, kname) VALUES ('Max', 'Rhabarberkuchen', SYSDATE(), 'Lecker Lecker Rhabarber', 'Rhabarberkuchen.jpg', 'Schoko, Mehl, Zucker', 1, 'Dessert');
INSERT INTO beitrag(bname, titel, bdatum, btext, bild, zutaten, portion, kname) VALUES ('Max', 'Namibischer Bananenkuchen', SYSDATE(), 'Lecker Lecker Namibia', 'Namibischer Bananenkuchen.jpg', 'Schoko, Mehl, Zucker', 1, 'Dessert');
INSERT INTO beitrag(bname, titel, bdatum, btext, bild, zutaten, portion, kname) VALUES ('Max', 'Gerollte Mini-Nusshörnchen', SYSDATE(), 'Lecker Lecker Hörnchen', 'Gerollte Mini-Nusshörnchen.jpg', 'Schoko, Mehl, Zucker', 1, 'Dessert');
INSERT INTO beitrag(bname, titel, bdatum, btext, bild, zutaten, portion, kname) VALUES ('Max', 'Schüttelkuchen', SYSDATE(), 'Lecker Lecker Schüttelküchen', 'Schüttelkuchen.jpg', 'Schoko, Mehl, Zucker', 1, 'Dessert');
INSERT INTO beitrag(bname, titel, bdatum, btext, bild, zutaten, portion, kname) VALUES ('Max', 'Mozart-Torte', SYSDATE(), 'Lecker Lecker Mozart', 'Mozart-Torte.jpg', 'Schoko, Mehl, Zucker', 1, 'Dessert');
INSERT INTO beitrag(bname, titel, bdatum, btext, bild, zutaten, portion, kname) VALUES ('Max', 'Biskuitrolle mit Erdbeerfüllung', SYSDATE(), 'Lecker Lecker Erdbeere', 'Biskuitrolle mit Erdbeerfüllung.jpg', 'Schoko, Mehl, Zucker', 1, 'Dessert');
INSERT INTO beitrag(bname, titel, bdatum, btext, bild, zutaten, portion, kname) VALUES ('Max', 'Japanische Melonenbrötchen', SYSDATE(), 'Lecker Lecker Melone', 'Japanische Melonenbrötchen.jpg', 'Schoko, Mehl, Zucker', 1, 'Dessert');
INSERT INTO beitrag(bname, titel, bdatum, btext, bild, zutaten, portion, kname) VALUES ('Max', 'Schokoladenmuffins mit einem Marshmellowhut', SYSDATE(), 'Lecker Lecker Muffin', 'Schokoladenmuffins mit einem Marshmellowhut.jpg', 'Schoko, Mehl, Zucker', 1, 'Dessert');

INSERT INTO beitrag(bname, titel, bdatum, btext, bild, zutaten, portion, kname) VALUES ('Max', 'Frühstücksmuffins ', SYSDATE(), 'Lecker Lecker Frühstücks-Muffin', 'Frühstücksmuffins.jpg', 'Schoko, Mehl, Zucker', 1, 'Frühstück');
INSERT INTO beitrag(bname, titel, bdatum, btext, bild, zutaten, portion, kname) VALUES ('Max', 'Kürbiscremesuppe ', SYSDATE(), 'Lecker Lecker Kürbisse', 'Kürbiscremesuppe.jpg', 'Schoko, Mehl, Zucker', 1, 'Vorspeise');
INSERT INTO beitrag(bname, titel, bdatum, btext, bild, zutaten, portion, kname) VALUES ('Max', 'Wiener Schnitzel', SYSDATE(), 'Lecker Lecker Schnitzel', 'Wiener Schnitzel.jpg', 'Schoko, Mehl, Zucker', 1, 'Hauptspeise');
INSERT INTO beitrag(bname, titel, bdatum, btext, bild, zutaten, portion, kname) VALUES ('Max', 'Erdäpfelsalat ', SYSDATE(), 'Lecker Lecker erdige Äpfel', 'Erdäpfelsalat.jpg', 'Schoko, Mehl, Zucker', 1, 'Beilage');
INSERT INTO beitrag(bname, titel, bdatum, btext, bild, zutaten, portion, kname) VALUES ('Max', 'Steirischer Krautsalat', SYSDATE(), 'Lecker Lecker Steiermark', 'Steirischer Krautsalat.jpg', 'Schoko, Mehl, Zucker', 1, 'Salat');

INSERT INTO kommentar (kdatum, ktext) VALUES (SYSDATE(), 'Echt supa Kuchen!'); 
INSERT INTO kommentar (kdatum, ktext, ukid) VALUES (SYSDATE(), 'Der Kuchen ist wirklich supa!', 1); 
INSERT INTO erstellt VALUES (1, 1, 'Max');
INSERT INTO bewertung(anzahl, wert, bid) VALUES (1, 5, 1);
INSERT INTO bewertung(anzahl, wert, bid) VALUES (1, 2, 1);

DROP TABLE bewertung;
DROP TABLE erstellt;
DROP TABLE kommentar;
DROP TABLE beitrag;
DROP TABLE kategorie;
DROP TABLE benutzer;
