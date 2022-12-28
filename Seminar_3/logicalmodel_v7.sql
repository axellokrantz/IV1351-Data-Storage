CREATE TABLE classroom (
 id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 max_capacity INT NOT NULL,
 classroom_nr VARCHAR(100) NOT NULL,
 city VARCHAR(100),
 zip_code VARCHAR(10),
 street_address VARCHAR(100)
);

ALTER TABLE classroom ADD CONSTRAINT PK_classroom PRIMARY KEY (id);

INSERT INTO classroom (max_capacity,classroom_nr,city,zip_code,street_address)
VALUES
  (23,196,'Vallentuna','55T 4Y2','Ap #579-3093 Velit. Avenue'),
  (2,291,'Tranås','683742','P.O. Box 778, 6400 Sit Av.'),
  (2,267,'Nässjö','7182','Ap #333-4845 Euismod St.'),
  (21,297,'Falun','782172','P.O. Box 862, 8345 Cras St.'),
  (1,256,'Sandviken','31487','Ap #302-3645 Accumsan Ave'),
  (7,202,'Värnamo','75172','842-4395 Mauris Av.'),
  (28,192,'Lidköping','8740','739-8304 Odio. Ave'),
  (15,179,'Bollnäs','5541','425-2460 Cursus St.'),
  (13,135,'Tranås','6223','5744 Non, Ave'),
  (23,106,'Lidingo','734249','9820 Morbi Rd.');


CREATE TABLE person (
 id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 ssn VARCHAR(12) UNIQUE
);

ALTER TABLE person ADD CONSTRAINT PK_person PRIMARY KEY (id);

INSERT INTO person (ssn)
VALUES
  ('200516022360'),
  ('198389337084'),
  ('199257551114'),
  ('199299786798'),
  ('198277566876'),
  ('200061762573'),
  ('199210332527'),
  ('199414549776'),
  ('198440480731'),
  ('200260474485'),
  ('200759600123'),
  ('200876077666'),
  ('199239197958'),
  ('199320285591'),
  ('198174791787'),
  ('198335912545'),
  ('199358118134'),
  ('199449805945'),
  ('200087659798'),
  ('198466781651'),
  ('199514095634'),
  ('199907980150'),
  ('199524499225'),
  ('199311150126'),
  ('200496156117'),
  ('200639964051'),
  ('199090591041'),
  ('200296721099'),
  ('198678017313'),
  ('198117027326'),
  ('198117027327'),
  ('198117027328');


CREATE TABLE person_info (
 person_id INT NOT NULL,
 first_name VARCHAR(1000) NOT NULL,
 last_name VARCHAR(1000) NOT NULL,
 email VARCHAR(200) NOT NULL,
 account_number VARCHAR(50) NOT NULL,
 city VARCHAR(100) NOT NULL,
 zip_code VARCHAR(10) NOT NULL,
 street_address VARCHAR(100) NOT NULL
);

ALTER TABLE person_info ADD CONSTRAINT PK_person_info PRIMARY KEY (person_id);

INSERT INTO person_info (person_id,first_name,last_name,email,account_number,city,zip_code,street_address)
VALUES
  (1,'Savannah Reynolds','Hedda Burnett','integer.id.magna@outlook.net',900823279222,'Mjölby','50011','765-7679 Et Ave'),
  (2,'Mannix Gallagher','Hilary Nunez','pharetra.quisque@google.com',358600446680,'Hudiksvall','60723','649-7782 Nec Street'),
  (3,'Xantha Gutierrez','Melissa Jacobs','risus@protonmail.org',407857619808,'Falun','82505','771-1605 Nec, Rd.'),
  (4,'Duncan Wyatt','Larissa Everett','posuere@hotmail.edu',484279382874,'Nässjö','17664','Ap #196-5680 Quis Ave'),
  (5,'Yasir Tran','Nathan Long','nunc.nulla@outlook.net',352633886278,'Jönköping','57352','753-7618 Ac, Ave'),
  (6,'Alvin Sloan','Leandra Becker','blandit@icloud.org',426925386950,'Bollnäs','49418','Ap #833-8025 Odio Avenue'),
  (7,'Rhona Rasmussen','Dorothy Cross','pellentesque.tellus.sem@icloud.com',777236947026,'Linköping','18365','P.O. Box 135, 5177 Curabitur Road'),
  (8,'Graiden Holland','Rama Dickson','amet@google.couk',356880933034,'Linköping','17466','Ap #791-1247 Tempor St.'),
  (9,'Leila Waller','Zena Fisher','eu.arcu.morbi@google.net',754407630130,'Nässjö','33977','Ap #223-9730 Non St.'),
  (10,'Emmanuel Morgan','Remedios Evans','mauris@outlook.org',976845888665,'Finspång','13939','393-6208 Felis Av.'),
  (11,'Jorden Roach','Avye Spencer','a.facilisis@outlook.edu',288528444541,'Alingsås','81068','Ap #809-4654 Semper Rd.'),
  (12,'Joan Conley','Paloma Hale','gravida@protonmail.edu',678905399678,'Boo','22635','P.O. Box 694, 4323 Ipsum Road'),
  (13,'Beatrice Robinson','Chase Boyd','fringilla.ornare@google.edu',998668061348,'Alingsås','70654','140-6787 Lacus. Ave'),
  (14,'Jasmine Kemp','Jonah Mathews','penatibus.et@hotmail.couk',770209563630,'Falun','17628','Ap #982-5741 Ut Road'),
  (15,'Maile Vasquez','Lara Larsen','magna.duis@yahoo.com',820039820557,'Lerum','80884','788-9475 Mauris St.'),
  (16,'Imelda Whitfield','Yvette Sharp','vel@protonmail.com',507696092801,'Stockholm','43617','P.O. Box 580, 2787 Donec Avenue'),
  (17,'Karleigh Hyde','Harding Bender','commodo.ipsum@protonmail.org',231346767280,'Tumba','45450','4730 Ut, Road'),
  (18,'Britanni Keller','Isabella Jacobs','blandit.viverra@protonmail.com',228446853311,'Motala','51442','750-8178 Molestie Street'),
  (19,'Breanna Daniels','Hamilton Skinner','semper.auctor@protonmail.ca',126261403974,'Borlänge','50561','P.O. Box 807, 4438 Nibh Av.'),
  (20,'Sylvester Beach','Camilla Potts','magnis@aol.ca',765325553215,'Mjölby','11280','Ap #251-6246 Cras St.'),
  (21,'Myles Gamble','Sandra Ray','egestas@protonmail.org',852427802155,'Alingsås','11364','390-3028 Natoque Ave'),
  (22,'Odessa Hendricks','Nomlanga Moon','purus.mauris@protonmail.com',371318976150,'Tumba','68288','746-1108 In Rd.'),
  (23,'Richard Compton','Hashim Morin','lorem.ipsum@protonmail.edu',718786496129,'Finspång','94056','737-2638 Eleifend Rd.'),
  (24,'Noelani Kirkland','Lucas King','pellentesque.massa@yahoo.org',680371917508,'Lidingo','43982','6580 Urna Avenue'),
  (25,'Ignacia Rose','Oliver Williamson','donec.vitae.erat@protonmail.org',348561524636,'Gävle','72386','510-966 Orci Road'),
  (26,'Aretha Mason','Joel Bray','sit.amet.metus@yahoo.net',896127379704,'Jönköping','32688','574-3578 Sed St.'),
  (27,'Macey West','Jeanette Wilson','tristique@outlook.edu',164394228687,'Bollnäs','95792','P.O. Box 568, 7238 Integer Av.'),
  (28,'Heidi Tanner','Kelsie Eaton','magna.suspendisse@google.net',830556192954,'Mjölby','04051','Ap #551-4360 Diam. Avenue'),
  (29,'Ian Gibson','Prescott Frost','egestas.urna@outlook.org',237551078974,'Avesta','47464','732-5971 Cras St.'),
  (30,'Holmes Burgess','Cyrus Hardin','tellus.phasellus@protonmail.net',766933345801,'Vetlanda','28591','503-8806 Varius St.'),
  (31,'Bethany Hurley','Gavin Britt','risus.nunc@aol.net',119170296522,'Ludvika','35588','Ap #797-224 Malesuada Ave'),
  (32,'Sylvester Frye','Risa Sweet','ridiculus.mus@google.net',922884158841,'Stockholm','45595','309-6988 Dignissim St.');


CREATE TABLE phone_number (
 id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 phone_number VARCHAR(15)
);

ALTER TABLE phone_number ADD CONSTRAINT PK_phone_number PRIMARY KEY (id);

INSERT INTO phone_number (phone_number)
VALUES
  ('1-222-976-2581'),
  ('(995) 915-8242'),
  ('(748) 657-4657'),
  ('1-464-492-9748'),
  ('1-336-223-8152'),
  ('(278) 417-0456'),
  ('1-260-252-3260'),
  ('1-241-304-1547'),
  ('1-376-751-9592'),
  ('1-777-561-5574'),
  ('(437) 736-6775'),
  ('1-808-785-5601'),
  ('1-434-916-1267'),
  ('1-895-514-4355'),
  ('1-624-788-3132'),
  ('(734) 515-5204'),
  ('1-314-299-5785'),
  ('1-528-653-6817'),
  ('1-611-341-5870'),
  ('(186) 990-8163'),
  ('1-361-721-3856'),
  ('(644) 124-0568'),
  ('1-607-179-2057'),
  ('(974) 935-7427'),
  ('1-835-155-3757'),
  ('1-464-412-9151'),
  ('1-248-337-1694'),
  ('1-763-450-3109'),
  ('1-275-357-8431'),
  ('1-563-455-3209'),
  ('1-222-999-8551'),
  ('1-143-827-7285');

CREATE TYPE skill_levels AS ENUM('Beginner', 'Intermediate', 'Advanced');
CREATE TABLE pricing_and_salary_scheme (
 id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 lesson_type VARCHAR(10) NOT NULL,
 skill_level skill_levels NOT NULL,
 amount INT NOT NULL
);

ALTER TABLE pricing_and_salary_scheme ADD CONSTRAINT PK_pricing_and_salary_scheme PRIMARY KEY (id);

INSERT INTO pricing_and_salary_scheme (lesson_type,skill_level,amount)
VALUES
  ('Individual', 'Beginner', 50),
  ('Individual', 'Intermediate', 75),
  ('Individual', 'Advanced', 100),
  ('Group', 'Beginner', 20),
  ('Group', 'Intermediate', 40),
  ('Group', 'Advanced', 60),
  ('Ensemble', 'Beginner', 30),
  ('Ensemble', 'Intermediate', 60),
  ('Ensemble', 'Advanced', 90),
  ('Individual', 'Beginner', 35),
  ('Individual', 'Intermediate', 50),
  ('Individual', 'Advanced', 80),
  ('Group', 'Beginner', 40),
  ('Group', 'Intermediate', 80),
  ('Group', 'Advanced', 120),
  ('Ensemble', 'Beginner', 50),
  ('Ensemble', 'Intermediate', 90),
  ('Ensemble', 'Advanced', 130);


CREATE TABLE sibling_discount (
 id INT NOT NULL,
 discount INT NOT NULL
);

ALTER TABLE sibling_discount ADD CONSTRAINT PK_sibling_discount PRIMARY KEY (id);

INSERT INTO sibling_discount (id, discount)
VALUES
(1, 20);


CREATE TABLE soundgood_music_staff (
 person_id INT NOT NULL,
 employee_id VARCHAR(20) UNIQUE
);

ALTER TABLE soundgood_music_staff ADD CONSTRAINT PK_soundgood_music_staff PRIMARY KEY (person_id);

INSERT INTO soundgood_music_staff (person_id,employee_id)
VALUES
  (1,'8051504129'),
  (2,'7652294504'),
  (3,'4930242385'),
  (4,'6142901781'),
  (5,'8083953538'),
  (6,'7742054313'),
  (7,'3044314477');


CREATE TABLE student (
 person_id INT NOT NULL,
 student_id VARCHAR(20) UNIQUE
);

ALTER TABLE student ADD CONSTRAINT PK_student PRIMARY KEY (person_id);

INSERT INTO student (person_id,student_id)
VALUES
  (8,'15770'),
  (9,'13939'),
  (10,'19974'),
  (11,'36628'),
  (12,'31431'),
  (13,'22581'),
  (14,'19796'),
  (15,'25777'),
  (16,'23277'),
  (17,'32248'),
  (18,'27671'),
  (19,'37083'),
  (20,'33308'),
  (21,'24565'),
  (22,'38548'),
  (23,'12580'),
  (24,'17449'),
  (25,'36602'),
  (26,'16255'),
  (27,'38467'),
  (28,'28594'),
  (29,'15868'),
  (30,'25912');


CREATE TABLE application (
 person_id INT NOT NULL,
 accepted BOOLEAN NOT NULL,
 enrolled BOOLEAN NOT NULL
);

ALTER TABLE application ADD CONSTRAINT PK_application PRIMARY KEY (person_id);

INSERT INTO application (person_id, accepted, enrolled)
VALUES
  (8,'Yes', 'Yes'),
  (9,'Yes', 'Yes'),
  (10,'Yes', 'Yes'),
  (11,'Yes', 'Yes'),
  (12,'Yes', 'Yes'),
  (13,'Yes', 'Yes'),
  (14,'Yes', 'Yes'),
  (15,'Yes', 'Yes'),
  (16,'Yes', 'Yes'),
  (17,'Yes', 'Yes'),
  (18,'Yes', 'Yes'),
  (19,'Yes', 'Yes'),
  (20,'Yes', 'Yes'),
  (21,'Yes', 'Yes'),
  (22,'Yes', 'Yes'),
  (23,'Yes', 'Yes'),
  (24,'Yes', 'Yes'),
  (25,'Yes', 'Yes'),
  (26,'Yes', 'Yes'),
  (27,'Yes', 'Yes'),
  (28,'Yes', 'Yes'),
  (29,'Yes', 'Yes'),
  (30,'Yes', 'Yes');


CREATE TABLE contact_person (
 student_id INT NOT NULL,
 contact_person_id VARCHAR(10)
);

ALTER TABLE contact_person ADD CONSTRAINT PK_contact_person PRIMARY KEY (student_id);

INSERT INTO contact_person (student_id,contact_person_id)
VALUES
  (11, 31),
  (12, 32);


CREATE TABLE instructor (
 soundgood_music_staff_id INT NOT NULL,
 teaches_individual BOOLEAN NOT NULL,
 teaches_group BOOLEAN NOT NULL,
 teaches_ensemble BOOLEAN NOT NULL
);

ALTER TABLE instructor ADD CONSTRAINT PK_instructor PRIMARY KEY (soundgood_music_staff_id);

INSERT INTO instructor (soundgood_music_staff_id,teaches_individual,teaches_group,teaches_ensemble)
VALUES
  (1,'No','Yes','No'),
  (2,'Yes','Yes','No'),
  (3,'No','No','Yes'),
  (4,'Yes','Yes','No'),
  (5,'Yes','No','No');


CREATE TABLE instrument (
 id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 instrument_type VARCHAR(100) NOT NULL,
 instructor_id INT
);

ALTER TABLE instrument ADD CONSTRAINT PK_instrument PRIMARY KEY (id);

INSERT INTO instrument(instrument_type, instructor_id)
VALUES
  ('Piano', 1),
  ('Flute', 2),
  ('Violin', 3),
  ('Guitar', 4),
  ('Drums', 5),
  ('Piano', null), -- no skill level
  ('Flute', null), -- no skill level
  ('Violin', null), -- no skill level
  ('Guitar', null), -- no skill level
  ('Drums', null), -- no skill level
  ('Piano', null), -- beginner
  ('Flute', null), -- beginner
  ('Violin', null), -- beginner
  ('Guitar', null), -- beginner
  ('Drums', null), -- beginner
  ('Piano', null), -- intermediate
  ('Flute', null), -- intermediate
  ('Violin', null), -- intermediate
  ('Guitar', null),-- intermediate
  ('Drums', null), -- intermediate
  ('Piano', null), -- advanced
  ('Flute', null), -- advanced
  ('Violin', null), -- advanced
  ('Guitar', null), -- advanced
  ('Drums', null); -- advanced


CREATE TABLE instrument_for_rent (
 id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 instrument_monthly_fee INT NOT NULL,
 brand VARCHAR(100) NOT NULL,
 instrument_id INT NOT NULL
);

ALTER TABLE instrument_for_rent ADD CONSTRAINT PK_instrument_for_rent PRIMARY KEY (id);

INSERT INTO instrument_for_rent(brand, instrument_id, instrument_monthly_fee)
VALUES
  ('Gibson', 7, 80),
  ('Yamaha', 6, 100),
  ('Sennheiser', 8, 30);



CREATE TABLE lesson (
 id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 start_time TIMESTAMP(6),
 end_time TIMESTAMP(6),
 min_num_students INT,
 max_num_students INT,
 instructor_id INT,
 classroom_id INT NOT NULL
);

ALTER TABLE lesson ADD CONSTRAINT PK_lesson PRIMARY KEY (id);

INSERT INTO lesson(start_time,end_time,min_num_students,max_num_students,instructor_id,classroom_id)
VALUES
  ('2022-12-01 15:00:00', '2022-12-01 16:00:00', 1, 1, 2, 1),
  ('2022-12-01 09:00:00', '2022-12-01 10:30:00', 2, 2, 1, 5),
  ('2022-12-10 11:00:00', '2022-12-10 12:00:00', 5, 5, 3, 9),
  ('2022-12-02 14:00:00', '2022-12-02 15:30:00', 1, 1, 4, 1),
  ('2022-12-02 14:00:00', '2022-12-02 15:30:00', 1, 1, 2, 1),
  ('2024-02-02 14:00:00', '2024-02-02 15:30:00', 1, 1, 4, 3),
  ('2022-12-09 14:00:00', '2022-12-09 15:30:00', 5, 5, 3, 7),
  ('2022-12-08 14:00:00', '2022-12-08 15:30:00', 4, 4, 3, 7),
  ('2022-12-15 14:00:00', '2022-12-15 15:30:00', 3, 3, 3, 7),
  ('2022-08-08 12:00:00', '2022-08-08 13:30:00', 2, 3, 3, 7),
  ('2022-12-14 12:00:00', '2022-12-14 13:30:00', 2, 3, 3, 7),
  ('2022-12-13 12:00:00', '2022-12-13 13:30:00', 2, 3, 3, 7);


CREATE TABLE person_phone_number (
 person_id INT NOT NULL,
 phone_number_id INT NOT NULL
);

ALTER TABLE person_phone_number ADD CONSTRAINT PK_person_phone_number PRIMARY KEY (person_id,phone_number_id);

INSERT INTO person_phone_number (person_id,phone_number_id)
VALUES
  (1,1),
  (2,2),
  (3,3),
  (4,4),
  (5,5),
  (6,6),
  (7,7),
  (8,8),
  (9,9),
  (10,10),
  (11,11),
  (12,12),
  (13,13),
  (14,14),
  (15,15),
  (16,16),
  (17,17),
  (18,18),
  (19,19),
  (20,20),
  (21,21),
  (22,22),
  (23,23),
  (24,24),
  (25,25),
  (26,26),
  (27,27),
  (28,28),
  (29,29),
  (30,30);


CREATE TABLE rental_period (
 student_id INT NOT NULL,
 instrument_for_rent_id INT NOT NULL,
 start_date TIMESTAMP(6) NOT NULL,
 end_date TIMESTAMP(6) NOT NULL
);

ALTER TABLE rental_period ADD CONSTRAINT PK_rental_period PRIMARY KEY (student_id,instrument_for_rent_id);

INSERT INTO rental_period (student_id,instrument_for_rent_id,start_date,end_date)
VALUES
  (8, 2, '2022-12-15 08:00:00', '2023-12-15 08:00:00'),
  (13, 3, '2023-02-15 08:00:00', '2023-05-15 08:00:00');


CREATE TABLE sibling (
 sibling_id VARCHAR(20) NOT NULL,
 student_id INT NOT NULL
);

ALTER TABLE sibling ADD CONSTRAINT PK_sibling PRIMARY KEY (sibling_id,student_id);

INSERT INTO sibling(sibling_id, student_id)
VALUES
 (9, 11),
 (10, 11),
 (9, 10),
 (11, 10),
 (10, 9),
 (11, 9),
 (19, 18),
 (18, 19);



CREATE TABLE skill_level (
 instrument_id INT NOT NULL,
 current_skill_level skill_levels NOT NULL
);

ALTER TABLE skill_level ADD CONSTRAINT PK_skill_level PRIMARY KEY (instrument_id);

INSERT INTO skill_level(instrument_id,current_skill_level)
VALUES
  (11,'Beginner'), 
  (12,'Beginner'), 
  (13,'Beginner'),
  (14,'Beginner'), 
  (15,'Beginner'), 
  (16,'Intermediate'),
  (17,'Intermediate'), 
  (18,'Intermediate'), 
  (19,'Intermediate'),
  (20,'Intermediate'), 
  (21,'Advanced'), 
  (22,'Advanced'),
  (23,'Advanced'), 
  (24,'Advanced'), 
  (25,'Advanced');


CREATE TABLE available_time_slot (
 start_time TIMESTAMP(6) NOT NULL,
 end_time TIMESTAMP(6) NOT NULL,
 instructor_id INT NOT NULL
);

ALTER TABLE available_time_slot ADD CONSTRAINT PK_available_time_slot PRIMARY KEY (start_time,end_time,instructor_id);

INSERT INTO available_time_slot(start_time,end_time,instructor_id)
VALUES
 ('2022-12-24 10:00:00', '2022-12-24 15:00:00',1),
 ('2022-12-25 10:00:00', '2022-12-25 15:00:00',1),
 ('2023-01-15 08:00:00', '2023-01-15 10:00:00',2),
 ('2023-01-20 11:00:00', '2023-01-20 13:00:00',3);


CREATE TABLE booking (
 lesson_id INT NOT NULL,
 student_id INT NOT NULL,
 booking_reference VARCHAR(20) UNIQUE,
 instrument_id INT NOT NULL
);

ALTER TABLE booking ADD CONSTRAINT PK_booking PRIMARY KEY (lesson_id,student_id);

INSERT INTO booking (lesson_id,student_id,booking_reference,instrument_id)
VALUES
  (1,8,'IAG96MDU2RG5LO3',16),
  (2,9,'HTF87SRG9QH5YV6',20),
  (2,10,'JIQ17TJW3HV9ZU5',20),
  (3,11,'BSW97OOA4JV4UT8',21),
  (3,12,'WTF82UXJ8YI3BO8',25),
  (3,13,'KDR64YPN7TR1BC7',24),
  (3,14,'CXI54PRN9YA2EG6',24),
  (3,15,'SLG61MLY8KY4LP8',24),
  (4,16,'EHD83KJW4OD4YB8',12),
  (5,17,'ZKW74QJA6JU2WK5',13),
  (6,17,'ZKW74QJA6JU2WK6',14),
  (7,17,'ZKW74QJA6JU2WK7',14),
  (7,18,'ZKW74QJA6JU2WK8',15),
  (8,17,'WTF82UXJ8YI3BO9',12),
  (8,18,'WTF82UXJ8YI3BO1',12),
  (8,20,'WTF82UXJ8YI3B10',13),
  (9,10,'IAG96MDU2RG5LO4',16),
  (9,11,'IAG96MDU2RG5LO5',17),
  (9,12,'IAG96MDU2RG5LO6',18),
  (11,9,'QWEQ41293JAQWEF',21),
  (11,13,'423FQA123AGDEL',24),
  (12,9,'QWEQ41293JAQWE2',21);


CREATE TABLE ensemble (
 lesson_id INT NOT NULL,
 genre VARCHAR(100)
);

ALTER TABLE ensemble ADD CONSTRAINT PK_ensemble PRIMARY KEY (lesson_id);

INSERT INTO ensemble(lesson_id,genre)
VALUES
 (3, 'Jazz'),
 (7, 'Rock'),
 (8, 'Pop'),
 (9, 'Classic'),
 (11, 'Jazz'),
 (12, 'Jazz');


ALTER TABLE person_info ADD CONSTRAINT FK_person_info_0 FOREIGN KEY (person_id) REFERENCES person (id);


ALTER TABLE soundgood_music_staff ADD CONSTRAINT FK_soundgood_music_staff_0 FOREIGN KEY (person_id) REFERENCES person (id);


ALTER TABLE student ADD CONSTRAINT FK_student_0 FOREIGN KEY (person_id) REFERENCES person (id);


ALTER TABLE application ADD CONSTRAINT FK_application_0 FOREIGN KEY (person_id) REFERENCES person (id);


ALTER TABLE contact_person ADD CONSTRAINT FK_contact_person_0 FOREIGN KEY (student_id) REFERENCES student (person_id);


ALTER TABLE instructor ADD CONSTRAINT FK_instructor_0 FOREIGN KEY (soundgood_music_staff_id) REFERENCES soundgood_music_staff (person_id);


ALTER TABLE instrument ADD CONSTRAINT FK_instrument_0 FOREIGN KEY (instructor_id) REFERENCES instructor (soundgood_music_staff_id);


ALTER TABLE instrument_for_rent ADD CONSTRAINT FK_instrument_for_rent_0 FOREIGN KEY (instrument_id) REFERENCES instrument (id);


ALTER TABLE lesson ADD CONSTRAINT FK_lesson_0 FOREIGN KEY (instructor_id) REFERENCES instructor (soundgood_music_staff_id);
ALTER TABLE lesson ADD CONSTRAINT FK_lesson_1 FOREIGN KEY (classroom_id) REFERENCES classroom (id);


ALTER TABLE person_phone_number ADD CONSTRAINT FK_person_phone_number_0 FOREIGN KEY (person_id) REFERENCES person (id);
ALTER TABLE person_phone_number ADD CONSTRAINT FK_person_phone_number_1 FOREIGN KEY (phone_number_id) REFERENCES phone_number (id);


ALTER TABLE rental_period ADD CONSTRAINT FK_rental_period_0 FOREIGN KEY (student_id) REFERENCES student (person_id);
ALTER TABLE rental_period ADD CONSTRAINT FK_rental_period_1 FOREIGN KEY (instrument_for_rent_id) REFERENCES instrument_for_rent (id);


ALTER TABLE sibling ADD CONSTRAINT FK_sibling_0 FOREIGN KEY (student_id) REFERENCES student (person_id);


ALTER TABLE skill_level ADD CONSTRAINT FK_skill_level_0 FOREIGN KEY (instrument_id) REFERENCES instrument (id);


ALTER TABLE available_time_slot ADD CONSTRAINT FK_available_time_slot_0 FOREIGN KEY (instructor_id) REFERENCES instructor (soundgood_music_staff_id);


ALTER TABLE booking ADD CONSTRAINT FK_booking_0 FOREIGN KEY (lesson_id) REFERENCES lesson (id);
ALTER TABLE booking ADD CONSTRAINT FK_booking_1 FOREIGN KEY (student_id) REFERENCES student (person_id);
ALTER TABLE booking ADD CONSTRAINT FK_booking_2 FOREIGN KEY (instrument_id) REFERENCES instrument (id);


ALTER TABLE ensemble ADD CONSTRAINT FK_ensemble_0 FOREIGN KEY (lesson_id) REFERENCES lesson (id);


