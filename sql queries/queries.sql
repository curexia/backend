CREATE SEQUENCE USER_seq;
CREATE TABLE person(id int NOT NULL DEFAULT NEXTVAL ('USER_seq') PRIMARY KEY, name varchar(20) NOT NULL, address varchar(100) DEFAULT 'India', dob date, designation varchar(10), phone int);

CREATE TABLE disease(userid int NOT NULL, name varchar(20) NOT NULL, description varchar(100) NOT NULL, category varchar(10) NOT NULL, precaution varchar(100), symptoms varchar(100), remedies varchar(100) DEFAULT 'Consult Doctor');


INSERT INTO person (name,dob,address,designation,phone) VALUES('Dr. Doofenshmirtz',TO_DATE('01/01/0001', 'DD/MM/YYYY'),' 9297 Polly Parkway, Danville','Doctor',1234567890);
INSERT INTO person (name,dob,address,designation,phone) VALUES('Perry the Platypus',TO_DATE('01/01/0001', 'DD/MM/YYYY'),' 9297 Polly Parkway, Danville','Patient',1234567890);

SELECT * FROM person;


INSERT INTO disease (userid,name,description,category,precaution,symptoms,remedies) VALUES(2,'Coldface', 'a person who does not oblige to any of their mistakes','Disease','Do Nothing','People getting annoyed around you','Be same. Its good.');
INSERT INTO disease (userid,name,description,category,precaution,symptoms,remedies) VALUES(2,'Humans','The doom of this planet','Allergy','Avoid as much as possible','Being annoyed for no reason','Punch and run,if encountered');

SELECT * FROM disease;