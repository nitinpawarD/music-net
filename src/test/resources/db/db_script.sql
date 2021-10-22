
CREATE TABLE musical_skill (
    id int NOT NULL,
    category varchar(255),
    instrument varchar(255),
	 PRIMARY KEY (id)
);


CREATE TABLE artist (
    id int NOT NULL,
    name varchar(255),
    description varchar(255),
	 PRIMARY KEY (ID)
);


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

INSERT INTO musical_skill values(1001,'Bell','Agoga');
INSERT INTO musical_skill values(1002,'Bell','Carillon');
INSERT INTO musical_skill values(1003,'Bell','Cowbell');
INSERT INTO musical_skill values(1004,'Guitar','Acoustic Guitar');