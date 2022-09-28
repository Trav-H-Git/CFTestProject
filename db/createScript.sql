DROP DATABASE IF EXISTS cfusers;
CREATE DATABASE cfusers; 
USE cfusers;

CREATE TABLE color(
	color_id INT NOT NULL AUTO_INCREMENT,
	color_name VARCHAR(255),
	color_red TINYINT unsigned,
	color_green TINYINT unsigned,
	color_blue TINYINT unsigned,
	CONSTRAINT pk_color_id PRIMARY KEY (color_id)
);
INSERT INTO color (color_id, color_name, color_red, color_green, color_blue) 
VALUES (1, 'red', 255, 0, 0);
INSERT INTO color (color_id, color_name, color_red, color_green, color_blue) 
VALUES (2, 'green',0, 255, 0);
INSERT INTO color (color_id, color_name, color_red, color_green, color_blue) 
VALUES (3, 'blue',0, 0, 255);

CREATE TABLE person(
	person_id INT NOT NULL AUTO_INCREMENT,
	person_first_name VARCHAR(255),
	person_last_name VARCHAR(255),
	person_email VARCHAR(255),
	person_password VARCHAR(255),
	person_fave_color INT,
	person_role ENUM('regular', 'admin', 'awaitingAprroval'),
	CONSTRAINT pk_person_id PRIMARY KEY (person_id),
	CONSTRAINT fk_person_color_id FOREIGN KEY (person_fave_color) REFERENCES color(color_id)
);
INSERT INTO person (person_first_name, person_last_name, person_email, person_password, person_fave_color, person_role) 
VALUES ('john', 'admin', 'john@email.com', 'pwd', 1, 'admin');
INSERT INTO person (person_first_name, person_last_name, person_email, person_password, person_fave_color, person_role) 
VALUES ('joe', 'regular', 'joe@email.com', 'pwd', 2, 'regular');

-- CREATE TABLE access(
-- 	access_id INT NOT NULL AUTO_INCREMENT,
-- 	access_role VARCHAR(255),
-- 	access_person_id int NOT NULL,
-- 	CONSTRAINT pk_access_id PRIMARY KEY (access_id),
-- 	CONSTRAINT fk_person_access_id FOREIGN KEY (access_person_id) REFERENCES person(person_id)
-- );
-- INSERT INTO access (access_role, access_person_id) 
-- VALUES ('admin', (SELECT person_id FROM person WHERE person_first_name = 'john' AND person_last_name = 'admin'));
-- INSERT INTO access (access_role, access_person_id) 
-- VALUES ('regular', (SELECT person_id FROM person WHERE person_first_name = 'joe' AND person_last_name = 'regular'));

CREATE TABLE history(
	history_id INT NOT NULL AUTO_INCREMENT,
	history_label VARCHAR(255),
	history_datetime DATETIME,
	history_person_id int NOT NULL,
	CONSTRAINT pk_history_id PRIMARY KEY (history_id),
	CONSTRAINT fk_person_history_id FOREIGN KEY (history_person_id) REFERENCES person(person_id)
);



