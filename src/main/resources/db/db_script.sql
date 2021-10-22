-----------------------------------------------------------------------------------------------------------------------
-- Mysql script for musicnet database. Detailed steps are :
-- 1)  Create database musicnet.
-- 2)  Create following tables and insert sample data into it - musical_skill, artist, artist_musical_skill
------------------------------------------------------------------------------------------------------------------------

CREATE TABLE musical_skill (
    id int NOT NULL,
    category varchar(255),
    instrument varchar(255),
	 PRIMARY KEY (id)
);

INSERT INTO musical_skill values(1001,'Bell','Agoga');
INSERT INTO musical_skill values(1002,'Bell','Carillon');
INSERT INTO musical_skill values(1003,'Bell','Cowbell');
INSERT INTO musical_skill values(1004,'Guitar','Acoustic Guitar');
INSERT INTO musical_skill values(1005,'Drum Kit','Cajon');
INSERT INTO musical_skill values(1006,'Vocal','Ghatam');
INSERT INTO musical_skill values(1007,'Keyboard','Balafon');
INSERT INTO musical_skill values(1008,'Keyboard','Beta drum');
INSERT INTO musical_skill values(1009,'Keyboard','Pate');
INSERT INTO musical_skill values(1010,'clave sticks','Triangle');
INSERT INTO musical_skill values(1011,'cymbal','Crotales');
INSERT INTO musical_skill values(1012,'slit drum','Agung');
INSERT INTO musical_skill values(1013,'slit drum','Babendil');
INSERT INTO musical_skill values(1014,'slit drum','Bak');
INSERT INTO musical_skill values(1015,'steelpan ','Handpan');


CREATE TABLE artist (
    id int NOT NULL,
    name varchar(255),
    description varchar(255),
	 PRIMARY KEY (ID)
);

INSERT INTO artist values(100001,'George Harrison ','The Famous Guitarist');
INSERT INTO artist values(100002,'Paul Macarthy','The Keyboard professional');


CREATE TABLE artist_musical_skill (
    id int NOT NULL,
    artist_id int NOT NULL,
    musical_skill_id int NOT NULL,
    PRIMARY KEY (id),
    CONSTRAINT FK_artist FOREIGN KEY (artist_id)
    REFERENCES artist(id),
	CONSTRAINT FK_musical_skill FOREIGN KEY (musical_skill_id)
    REFERENCES musical_skill(id)
);

INSERT INTO artist_musical_skill values(1,100001,1004);
INSERT INTO artist_musical_skill values(2,100002,1007);
INSERT INTO artist_musical_skill values(3,100002,1008);
INSERT INTO artist_musical_skill values(4,100002,1009);