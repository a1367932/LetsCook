--Erstellen der Tabellen:
CREATE TABLE benutzer (
	email			VARCHAR(200) 	NOT NULL,
	passwort		VARCHAR(200)    NOT NULL,
	vorname			VARCHAR(150) 	NOT NULL,
	nachame			VARCHAR(150) 	NOT NULL,
	strasse			VARCHAR(255) 	NOT NULL,
	plz				INTEGER 		NOT NULL,
	ort				VARCHAR(200) 	NOT NULL,
	land			VARCHAR(200)    NOT NULL,
	geschlecht		VARCHAR(1)		NOT NULL,
	bbild			VARCHAR(250),
	PRIMARY KEY (email)
);

CREATE TABLE kategorie (
	kname			VARCHAR(200)	NOT NULL,
	kbild			VARCHAR(200)	NOT NULL,
	beschreibung 	VARCHAR(250)	NOT NULL,
	PRIMARY KEY (kname)
);

CREATE TABLE beitrag (
	bid			INTEGER				NOT NULL,
	email		VARCHAR(200) 		NOT NULL,
	title		VARCHAR(250) 		NOT NULL,
	bdatum		DATE				NOT NULL,
	text		TEXT				NOT NULL,
	bild		VARCHAR(250)		NOT NULL,
	kname		VARCHAR(200)		NOT NULL,
	PRIMARY KEY (bid),
	FOREIGN KEY (email) REFERENCES benutzer(email),
	FOREIGN KEY (kname) REFERENCES kategorie(kname)
);

CREATE TABLE kommentar (
	kid			INTEGER 		NOT NULL,
	kdatum		DATE			NOT NULL,
	ktext		TEXT			NOT NULL,
	ukid		INTEGER,
	PRIMARY KEY (kid),
	FOREIGN KEY (ukid) REFERENCES kommentar(kid)
);

CREATE TABLE erstellt (
	bid			INTEGER			NOT NULL,
	kid			INTEGER			NOT NULL,
	email		VARCHAR(200)	NOT NULL,
	PRIMARY KEY (bid, kid, email),
	FOREIGN KEY (bid) REFERENCES beitrag(bid),
	FOREIGN KEY (kid) REFERENCES kommentar(kid),
	FOREIGN KEY (email) REFERENCES benutzer(email)
);

CREATE TABLE bewertung (
	bid			INTEGER			NOT NULL,
	anzahl		INTEGER			NOT NULL,
	wert		TINYINT			NOT NULL,
	PRIMARY KEY (bid),
	FOREIGN KEY (bid) REFERENCES beitrag(bid)
);

--Inserts:
		

DROP TABLE bewertung;
DROP TABLE erstellt;
DROP TABLE kommentar;
DROP TABLE beitrag;
DROP TABLE kategorie;
DROP TABLE benutzer;
