--CONN sys/123456 as sysdba;
--GRANT ALL PRIVILEGES TO atv IDENTIFIED BY atv;
--CONN atv/atv;

-- drop table atv.course_score;
-- drop table atv.course;
-- drop table atv.faculty;
-- drop table atv.parent;
-- drop table atv.student;
-- drop table atv.class;
-- drop table atv.teacher;
-- drop table atv.subject;
-- drop table atv.department;

CREATE TABLE faculty 
(
    id	VARCHAR(512),
    faculty_name	VARCHAR(512),
    short_name      VARCHAR(512), 
    dean	INT
);

INSERT INTO faculty (id, faculty_name, short_name, dean) VALUES ('1', 'Applied Science', 'AS', '1');
INSERT INTO faculty (id, faculty_name, short_name, dean) VALUES ('2', 'Electrical and Electronics Engineering', 'EEE', '2');
INSERT INTO faculty (id, faculty_name, short_name, dean) VALUES ('3', 'Computer Science and Engineering', 'CSE', '3');


CREATE TABLE department 
(
    id	INT,
    dept_head	INT,
    dept_name	VARCHAR(512),
    short_name  VARCHAR(512),
    faculty_id	VARCHAR(512)
);

INSERT INTO department (id, dept_head, dept_name, short_name, faculty_id) VALUES ('1', '4', 'Applied Math', 'APM', '1');
INSERT INTO department (id, dept_head, dept_name, short_name, faculty_id) VALUES ('2', '5', 'Political theory', 'PTH', '1');
INSERT INTO department (id, dept_head, dept_name, short_name, faculty_id) VALUES ('3', '6', 'Electrical engineering', 'EE', '2');
INSERT INTO department (id, dept_head, dept_name, short_name, faculty_id) VALUES ('4', '7', 'Control engineering - automation', 'CEA', '2');
INSERT INTO department (id, dept_head, dept_name, short_name, faculty_id) VALUES ('5', '8', 'Computer Science', 'CS', '3');
INSERT INTO department (id, dept_head, dept_name, short_name, faculty_id) VALUES ('6', '9', 'Computer Engineering', 'CE', '3');

CREATE TABLE subject 
(
    id	INT,
    short_name      VARCHAR(512),
    subject_name	VARCHAR(512),
    credits	INT,
    dept_id	INT
);

INSERT INTO subject (id, short_name, subject_name, credits, dept_id) VALUES ('1', 'ASP', 'Analog Signal Processing', '3', '3');
INSERT INTO subject (id, short_name, subject_name, credits, dept_id) VALUES ('2', 'UPT', 'Univ Physics Thermal Phys', '3', '3');
INSERT INTO subject (id, short_name, subject_name, credits, dept_id) VALUES ('3', 'IEF', 'Intro to Electromagnetic Field', '4', '3');
INSERT INTO subject (id, short_name, subject_name, credits, dept_id) VALUES ('4', 'PE', 'Power Electronics', '3', '4');
INSERT INTO subject (id, short_name, subject_name, credits, dept_id) VALUES ('5', 'EM', 'Electric Machinery', '4', '4');
INSERT INTO subject (id, short_name, subject_name, credits, dept_id) VALUES ('6', 'IQC', 'Industrial Quality Control', '3', '4');
INSERT INTO subject (id, short_name, subject_name, credits, dept_id) VALUES ('7', 'GCH', 'General Chemistry I', '4', '1');
INSERT INTO subject (id, short_name, subject_name, credits, dept_id) VALUES ('8', 'CL1', 'Calculus I', '4', '1');
INSERT INTO subject (id, short_name, subject_name, credits, dept_id) VALUES ('9', 'CL2', 'Calculus II', '3', '1');
INSERT INTO subject (id, short_name, subject_name, credits, dept_id) VALUES ('10', 'ILS', 'Introduction to Vietnamese Law System', '2', '2');
INSERT INTO subject (id, short_name, subject_name, credits, dept_id) VALUES ('11', 'ENM', 'Economics', '2', '2');
INSERT INTO subject (id, short_name, subject_name, credits, dept_id) VALUES ('12', 'PML', 'Basic Principles of Marxism-Leninism', '3', '2');
INSERT INTO subject (id, short_name, subject_name, credits, dept_id) VALUES ('13', 'DS', 'Database Systems', '4', '5');
INSERT INTO subject (id, short_name, subject_name, credits, dept_id) VALUES ('14', 'OS', 'Operating Systems', '3', '5');
INSERT INTO subject (id, short_name, subject_name, credits, dept_id) VALUES ('15', 'PPL', 'Principles of Programming Languages', '4', '5');
INSERT INTO subject (id, short_name, subject_name, credits, dept_id) VALUES ('16', 'EDC', 'Electronic Devices and Circuit', '3', '6');
INSERT INTO subject (id, short_name, subject_name, credits, dept_id) VALUES ('17', 'CA', 'Computer Architecture', '3', '6');
INSERT INTO subject (id, short_name, subject_name, credits, dept_id) VALUES ('18', 'LDP', 'Logic Design Project', '4', '6');

CREATE TABLE teacher 
(
    id	INT,
    first_name	VARCHAR(512),
    last_name	VARCHAR(512),
    birth_date	VARCHAR(512),
    gender	VARCHAR(512),
    home_town	VARCHAR(512),
    email	VARCHAR(512),
    address	VARCHAR(512),
    start_date	VARCHAR(512),
    dept_id	INT
);

INSERT INTO teacher (id, first_name, last_name, birth_date, gender, home_town, email, address, start_date, dept_id) VALUES ('1', 'Guglielma', 'Cheetham', '2/9/1981', 'Genderqueer', 'Jingtou', 'gcheetham0@squarespace.com', '9 Delaware Avenue', '12/8/2012', '2');
INSERT INTO teacher (id, first_name, last_name, birth_date, gender, home_town, email, address, start_date, dept_id) VALUES ('2', 'Iorgo', 'Mazella', '29/06/1984', 'Male', 'Tubarjal', 'imazella1@ovh.net', '3 Kropf Lane', '4/3/2007', '4');
INSERT INTO teacher (id, first_name, last_name, birth_date, gender, home_town, email, address, start_date, dept_id) VALUES ('3', 'Hunter', 'Waberer', '29/10/1986', 'Male', 'Puerto Berro', 'hwaberer2@archive.org', '7 Carey Avenue', '23/09/2007', '6');
INSERT INTO teacher (id, first_name, last_name, birth_date, gender, home_town, email, address, start_date, dept_id) VALUES ('4', 'Parrnell', 'Jillins', '24/06/1990', 'Male', 'Proletarsk', 'pjillins3@foxnews.com', '4 Fulton Avenue', '24/07/2007', '1');
INSERT INTO teacher (id, first_name, last_name, birth_date, gender, home_town, email, address, start_date, dept_id) VALUES ('5', 'Ezechiel', 'Lickess', '16/10/1988', 'Male', 'Heping', 'elickess4@fema.gov', '99 Darwin Park', '3/7/2000', '1');
INSERT INTO teacher (id, first_name, last_name, birth_date, gender, home_town, email, address, start_date, dept_id) VALUES ('6', 'Elfrieda', 'Barrowcliffe', '14/05/1995', 'Female', 'Yuwan', 'ebarrowcliffe5@unicef.org', '0202 South Point', '20/03/2001', '3');
INSERT INTO teacher (id, first_name, last_name, birth_date, gender, home_town, email, address, start_date, dept_id) VALUES ('7', 'Carree', 'Watkiss', '19/08/1987', 'Non-binary', 'Foz do Iguau', 'cwatkiss6@theatlantic.com', '983 Comanche Avenue', '19/10/2007', '4');
INSERT INTO teacher (id, first_name, last_name, birth_date, gender, home_town, email, address, start_date, dept_id) VALUES ('8', 'Trenton', 'Simmens', '21/07/1977', 'Male', 'Gelsenkirchen', 'tsimmens7@123-reg.co.uk', '0406 Lotheville Parkway', '8/10/2018', '6');
INSERT INTO teacher (id, first_name, last_name, birth_date, gender, home_town, email, address, start_date, dept_id) VALUES ('9', 'Martguerita', 'Lammertz', '2/12/1978', 'Female', 'Capito Poo', 'mlammertz8@shutterfly.com', '372 Derek Park', '11/11/2015', '6');
INSERT INTO teacher (id, first_name, last_name, birth_date, gender, home_town, email, address, start_date, dept_id) VALUES ('10', 'Joyce', 'Downham', '20/02/1987', 'Female', 'Karungdong', 'jdownham0@umn.edu', '194 Hauk Court', '16/08/2006', '1');
INSERT INTO teacher (id, first_name, last_name, birth_date, gender, home_town, email, address, start_date, dept_id) VALUES ('11', 'Clark', 'Fernando', '30/09/1978', 'Male', 'Yunlong', 'cfernando1@creativecommons.org', '1 Hansons Terrace', '23/07/2009', '2');
INSERT INTO teacher (id, first_name, last_name, birth_date, gender, home_town, email, address, start_date, dept_id) VALUES ('12', 'Augie', 'Haggarth', '12/08/1982', 'Male', 'Göteborg', 'ahaggarth2@uiuc.edu', '10 Nobel Street', '17/08/2005', '3');
INSERT INTO teacher (id, first_name, last_name, birth_date, gender, home_town, email, address, start_date, dept_id) VALUES ('13', 'Diandra', 'Angerstein', '24/04/1976', 'Female', 'Masape', 'dangerstein3@nba.com', '02750 Westport Court', '14/08/2006', '4');
INSERT INTO teacher (id, first_name, last_name, birth_date, gender, home_town, email, address, start_date, dept_id) VALUES ('14', 'Janel', 'Whiting', '10/04/1980', 'Female', 'Ipatinga', 'jwhiting4@slashdot.org', '1934 Atwood Pass', '11/07/2016', '5');
INSERT INTO teacher (id, first_name, last_name, birth_date, gender, home_town, email, address, start_date, dept_id) VALUES ('15', 'Jonell', 'Gilmour', '31/05/1991', 'Female', 'Surat Thani', 'jgilmour5@ning.com', '9370 Clarendon Park', '20/07/2003', '6');
INSERT INTO teacher (id, first_name, last_name, birth_date, gender, home_town, email, address, start_date, dept_id) VALUES ('16', 'Thomas', 'Gawler', '18/06/1995', 'Male', 'Taber', 'tgawler6@prlog.org', '981 Montana Trail', '13/09/2002', '1');
INSERT INTO teacher (id, first_name, last_name, birth_date, gender, home_town, email, address, start_date, dept_id) VALUES ('17', 'Massimiliano', 'Howes', '21/06/1979', 'Male', 'Aplahoué', 'mhowes7@unesco.org', '737 Center Trail', '28/09/2002', '2');
INSERT INTO teacher (id, first_name, last_name, birth_date, gender, home_town, email, address, start_date, dept_id) VALUES ('18', 'Clevie', 'Choppin', '14/05/1981', 'Male', 'Tầm Vu', 'cchoppin8@slate.com', '84467 Brickson Park Avenue', '08/07/2012', '3');
INSERT INTO teacher (id, first_name, last_name, birth_date, gender, home_town, email, address, start_date, dept_id) VALUES ('19', 'Gaby', 'Layzell', '22/02/1988', 'Male', 'Nyíregyháza', 'glayzell9@shinystat.com', '27098 Crescent Oaks Crossing', '21/08/2019', '4');
INSERT INTO teacher (id, first_name, last_name, birth_date, gender, home_town, email, address, start_date, dept_id) VALUES ('20', 'Gusti', 'Spaunton', '08/09/1984', 'Female', 'Villefontaine', 'gspauntona@simplemachines.org', '926 Fallview Court', '07/07/2009', '5');
INSERT INTO teacher (id, first_name, last_name, birth_date, gender, home_town, email, address, start_date, dept_id) VALUES ('21', 'Trip', 'Tams', '07/06/1977', 'Male', 'Bungsuan', 'ttamsb@goo.gl', '59 Karstens Hill', '06/12/2002', '6');
INSERT INTO teacher (id, first_name, last_name, birth_date, gender, home_town, email, address, start_date, dept_id) VALUES ('22', 'Rubetta', 'Theobalds', '07/05/1987', 'Genderqueer', 'Марино', 'rtheobaldsc@networksolutions.com', '25 Roxbury Park', '09/02/2012', '1');
INSERT INTO teacher (id, first_name, last_name, birth_date, gender, home_town, email, address, start_date, dept_id) VALUES ('23', 'Rocky', 'Elms', '25/01/1976', 'Male', 'Gongjiang', 'relmsd@imdb.com', '01 La Follette Court', '17/12/2016', '2');
INSERT INTO teacher (id, first_name, last_name, birth_date, gender, home_town, email, address, start_date, dept_id) VALUES ('24', 'Nanon', 'Clemence', '12/12/1977', 'Female', 'Hanyin Chengguanzhen', 'nclemencee@chron.com', '59 Crest Line Place', '15/06/2004', '3');
INSERT INTO teacher (id, first_name, last_name, birth_date, gender, home_town, email, address, start_date, dept_id) VALUES ('25', 'Arther', 'Itschakov', '09/06/1978', 'Male', 'Nzega', 'aitschakovf@godaddy.com', '59064 Hintze Place', '03/04/2016', '4');
INSERT INTO teacher (id, first_name, last_name, birth_date, gender, home_town, email, address, start_date, dept_id) VALUES ('26', 'Beauregard', 'Brun', '16/05/1986', 'Male', 'Béja', 'bbrung@usa.gov', '7244 Fuller Plaza', '18/08/2012', '5');
INSERT INTO teacher (id, first_name, last_name, birth_date, gender, home_town, email, address, start_date, dept_id) VALUES ('27', 'Salomo', 'Gauge', '07/04/1981', 'Male', 'Atescatempa', 'sgaugeh@elpais.com', '303 Morningstar Drive', '15/07/2016', '6');

CREATE TABLE class 
(
    id	INT,
    form_teacher_id	INT,
    class_name	VARCHAR(512)
);

INSERT INTO class (id, form_teacher_id, class_name) VALUES ('1', '10', 'UH20BE5');
INSERT INTO class (id, form_teacher_id, class_name) VALUES ('2', '12', 'TQ20JA3');
INSERT INTO class (id, form_teacher_id, class_name) VALUES ('3', '14', 'YR21KN5');
INSERT INTO class (id, form_teacher_id, class_name) VALUES ('4', '16', 'AQ20TX5');
INSERT INTO class (id, form_teacher_id, class_name) VALUES ('5', '18', 'RO21UN4');
INSERT INTO class (id, form_teacher_id, class_name) VALUES ('6', '20', 'VS21TR5');
INSERT INTO class (id, form_teacher_id, class_name) VALUES ('7', '22', 'EN21JS4');
INSERT INTO class (id, form_teacher_id, class_name) VALUES ('8', '24', 'AT21YW5');
INSERT INTO class (id, form_teacher_id, class_name) VALUES ('9', '26', 'GA21QD4');
INSERT INTO class (id, form_teacher_id, class_name) VALUES ('10', '27', 'FU21EG1');

CREATE TABLE parent 
(
    id	INT,
    first_name	VARCHAR(512),
    last_name	VARCHAR(512),
    birth_date	VARCHAR(512),
    gender	VARCHAR(512),
    address	VARCHAR(512),
    phone	INT,
    job	VARCHAR(512)
);

INSERT INTO parent (id, first_name, last_name, birth_date, gender, address, phone, job) VALUES ('1', 'Worth', 'Hearon', '15/05/1975', 'Male', '3942 Blackbird Pass', '7884143847', 'Speech Pathologist');
INSERT INTO parent (id, first_name, last_name, birth_date, gender, address, phone, job) VALUES ('2', 'Montgomery', 'Waliszek', '23/12/1977', 'Male', '2226 Porter Avenue', '7388145370', 'Graphic Designer');
INSERT INTO parent (id, first_name, last_name, birth_date, gender, address, phone, job) VALUES ('3', 'York', 'Kinver', '26/12/1967', 'Male', '21 Truax Place', '9005209528', 'Recruiter');
INSERT INTO parent (id, first_name, last_name, birth_date, gender, address, phone, job) VALUES ('4', 'Bobbette', 'Milthorpe', '24/02/1980', 'Female', '21952 Lakeland Circle', '8205960487', 'Marketing Manager');
INSERT INTO parent (id, first_name, last_name, birth_date, gender, address, phone, job) VALUES ('5', 'Kaleena', 'Haugeh', '2/2/1973', 'Female', '4902 Bayside Point', '6803329872', 'Help Desk Operator');
INSERT INTO parent (id, first_name, last_name, birth_date, gender, address, phone, job) VALUES ('6', 'Edgar', 'Silverson', '19/04/1970', 'Male', '689 Eagle Crest Circle', '8059969688', 'Occupational Therapist');
INSERT INTO parent (id, first_name, last_name, birth_date, gender, address, phone, job) VALUES ('7', 'Dorothy', 'Panchen', '5/2/1975', 'Genderfluid', '33575 Debra Way', '7585541447', 'Office Assistant I');
INSERT INTO parent (id, first_name, last_name, birth_date, gender, address, phone, job) VALUES ('8', 'Niccolo', 'Ketchen', '30/09/1978', 'Male', '421 Dexter Center', '5084809746', 'Senior Sales Associate');
INSERT INTO parent (id, first_name, last_name, birth_date, gender, address, phone, job) VALUES ('9', 'Pepe', 'Treasure', '28/07/1979', 'Male', '4 Dunning Parkway', '8063602406', 'Occupational Therapist');
INSERT INTO parent (id, first_name, last_name, birth_date, gender, address, phone, job) VALUES ('10', 'Lexine', 'Seals', '9/7/1969', 'Female', '113 Heffernan Pass', '7459769767', 'Biostatistician III');
INSERT INTO parent (id, first_name, last_name, birth_date, gender, address, phone, job) VALUES ('11', 'Kinnie', 'Myrtle', '27/05/1973', 'Male', '44746 Express Lane', '1185888487', 'Project Manager');
INSERT INTO parent (id, first_name, last_name, birth_date, gender, address, phone, job) VALUES ('12', 'Felita', 'Stanway', '25/05/1972', 'Female', '252 Randy Place', '7624133574', 'Recruiting Manager');
INSERT INTO parent (id, first_name, last_name, birth_date, gender, address, phone, job) VALUES ('13', 'Othilia', 'Linbohm', '4/9/1978', 'Female', '842 Stang Court', '1032406110', 'Senior Financial Analyst');
INSERT INTO parent (id, first_name, last_name, birth_date, gender, address, phone, job) VALUES ('14', 'Tyson', 'Fairbanks', '15/12/1975', 'Male', '14485 Gina Park', '8819526014', 'Sales Associate');
INSERT INTO parent (id, first_name, last_name, birth_date, gender, address, phone, job) VALUES ('15', 'Adolph', 'Beranek', '21/06/1975', 'Agender', '79 Tennessee Parkway', '9031875971', 'Sales Associate');
INSERT INTO parent (id, first_name, last_name, birth_date, gender, address, phone, job) VALUES ('16', 'Sauncho', 'Fillingham', '13/02/1971', 'Male', '1 Sommers Street', '2733096180', 'Payment Adjustment Coordinator');
INSERT INTO parent (id, first_name, last_name, birth_date, gender, address, phone, job) VALUES ('17', 'Aggi', 'Coppledike', '27/09/1976', 'Female', '9 Crownhardt Center', '5417269314', 'Analog Circuit Design manager');
INSERT INTO parent (id, first_name, last_name, birth_date, gender, address, phone, job) VALUES ('18', 'Mamie', 'Clutheram', '14/12/1968', 'Female', '6570 Knutson Place', '7965325795', 'Business Systems Development Analyst');
INSERT INTO parent (id, first_name, last_name, birth_date, gender, address, phone, job) VALUES ('19', 'Suzette', 'Howcroft', '18/03/1968', 'Female', '925 Columbus Plaza', '9285015972', 'VP Accounting');
INSERT INTO parent (id, first_name, last_name, birth_date, gender, address, phone, job) VALUES ('20', 'Wood', 'Lowell', '17/01/1966', 'Male', '78133 Longview Circle', '1502900288', 'Analog Circuit Design manager');
INSERT INTO parent (id, first_name, last_name, birth_date, gender, address, phone, job) VALUES ('21', 'Chandal', 'Isacoff', '26/11/1969', 'Female', '20498 Twin Pines Parkway', '4108996191', 'Pharmacist');
INSERT INTO parent (id, first_name, last_name, birth_date, gender, address, phone, job) VALUES ('22', 'Dulcinea', 'Lainge', '31/03/1969', 'Female', '61 Transport Plaza', '5574622692', 'Senior Developer');
INSERT INTO parent (id, first_name, last_name, birth_date, gender, address, phone, job) VALUES ('23', 'Keith', 'McGall', '29/09/1974', 'Male', '7 Bashford Hill', '4782536478', 'Software Consultant');
INSERT INTO parent (id, first_name, last_name, birth_date, gender, address, phone, job) VALUES ('24', 'Hallie', 'Prest', '1/2/1970', 'Female', '7528 Westend Crossing', '4374193218', 'Junior Executive');
INSERT INTO parent (id, first_name, last_name, birth_date, gender, address, phone, job) VALUES ('25', 'Brit', 'Iacovuzzi', '22/10/1976', 'Female', '95250 Mccormick Road', '4798998246', 'Actuary');
INSERT INTO parent (id, first_name, last_name, birth_date, gender, address, phone, job) VALUES ('26', 'Levi', 'Haddleston', '24/05/1965', 'Male', '8 Onsgard Center', '7684022154', 'Information Systems Manager');
INSERT INTO parent (id, first_name, last_name, birth_date, gender, address, phone, job) VALUES ('27', 'Andrew', 'Finney', '1/12/1969', 'Male', '45781 Kedzie Terrace', '5477611051', 'Sales Representative');
INSERT INTO parent (id, first_name, last_name, birth_date, gender, address, phone, job) VALUES ('28', 'Curt', 'Spennock', '4/7/1976', 'Male', '8 Riverside Junction', '6139222677', 'Account Coordinator');
INSERT INTO parent (id, first_name, last_name, birth_date, gender, address, phone, job) VALUES ('29', 'Kelbee', 'Bernardelli', '14/01/1973', 'Male', '0 Grim Center', '1951637825', 'Dental Hygienist');
INSERT INTO parent (id, first_name, last_name, birth_date, gender, address, phone, job) VALUES ('30', 'Aline', 'Alldre', '2/7/1974', 'Female', '5 Fallview Road', '9647990125', 'VP Marketing');
INSERT INTO parent (id, first_name, last_name, birth_date, gender, address, phone, job) VALUES ('31', 'Ranice', 'Bowgen', '29/08/1967', 'Female', '8983 Paget Center', '5509725109', 'Programmer Analyst I');
INSERT INTO parent (id, first_name, last_name, birth_date, gender, address, phone, job) VALUES ('32', 'Worthington', 'Vala', '18/07/1979', 'Male', '5 Ridgeview Court', '6987545751', 'Sales Associate');
INSERT INTO parent (id, first_name, last_name, birth_date, gender, address, phone, job) VALUES ('33', 'Carie', 'Willshaw', '22/10/1965', 'Genderfluid', '4 Hudson Court', '6706983318', 'Web Developer III');
INSERT INTO parent (id, first_name, last_name, birth_date, gender, address, phone, job) VALUES ('34', 'Alfredo', 'Boome', '3/3/1971', 'Male', '267 Canary Terrace', '8219947061', 'Electrical Engineer');
INSERT INTO parent (id, first_name, last_name, birth_date, gender, address, phone, job) VALUES ('35', 'Clerc', 'Niles', '25/08/1966', 'Male', '20 Eastlawn Lane', '6835145900', 'Marketing Manager');
INSERT INTO parent (id, first_name, last_name, birth_date, gender, address, phone, job) VALUES ('36', 'Bruis', 'Kelson', '11/2/1966', 'Male', '85032 Transport Plaza', '6034382027', 'Actuary');
INSERT INTO parent (id, first_name, last_name, birth_date, gender, address, phone, job) VALUES ('37', 'Ramon', 'Crone', '4/11/1970', 'Genderqueer', '28 Meadow Valley Place', '4309234792', 'Administrative Assistant I');
INSERT INTO parent (id, first_name, last_name, birth_date, gender, address, phone, job) VALUES ('38', 'Gilburt', 'Rippingale', '26/08/1971', 'Male', '626 Mccormick Street', '1238001350', 'Senior Financial Analyst');
INSERT INTO parent (id, first_name, last_name, birth_date, gender, address, phone, job) VALUES ('39', 'Brody', 'Swancott', '22/02/1976', 'Male', '37 Porter Way', '5389500218', 'Systems Administrator II');
INSERT INTO parent (id, first_name, last_name, birth_date, gender, address, phone, job) VALUES ('40', 'Elianora', 'Sandy', '10/9/1969', 'Female', '2 Vernon Crossing', '6327042635', 'Account Executive');

CREATE TABLE student 
(
    id	INT,
    first_name	VARCHAR(512),
    last_name	VARCHAR(512),
    birth_date	VARCHAR(512),
    gender	VARCHAR(512),
    home_town	VARCHAR(512),
    ethnic	VARCHAR(512),
    religion	VARCHAR(512),
    email	VARCHAR(512),
    address	VARCHAR(512),
    class_id	INT,
    parent_id	INT
);

INSERT INTO student (id, first_name, last_name, birth_date, gender, home_town, ethnic, religion, email, address, class_id, parent_id) VALUES ('1', 'Nahum', 'Roskam', '27/01/2000', 'Male', 'Borino', 'Hoa', 'Protestantism', 'nroskam0@lycos.com', '71 Lawn Pass', '1', '24');
INSERT INTO student (id, first_name, last_name, birth_date, gender, home_town, ethnic, religion, email, address, class_id, parent_id) VALUES ('2', 'Ade', 'Heake', '12/10/2008', 'Male', 'Lázně Kynžvart', 'Kinh', 'None', 'aheake1@statcounter.com', '9 Arrowood Avenue', '2', '30');
INSERT INTO student (id, first_name, last_name, birth_date, gender, home_town, ethnic, religion, email, address, class_id, parent_id) VALUES ('3', 'Esmaria', 'Davis', '18/07/2014', 'Polygender', 'Fort Pierce', 'Hoa', 'Catholicism', 'edavis2@nature.com', '55248 Pleasure Pass', '3', '9');
INSERT INTO student (id, first_name, last_name, birth_date, gender, home_town, ethnic, religion, email, address, class_id, parent_id) VALUES ('4', 'Rosita', 'Windus', '01/01/2018', 'Female', 'San Isidro', 'Kinh', 'None', 'rwindus3@ow.ly', '2462 Shasta Crossing', '4', '37');
INSERT INTO student (id, first_name, last_name, birth_date, gender, home_town, ethnic, religion, email, address, class_id, parent_id) VALUES ('5', 'Nadya', 'Box', '26/08/2012', 'Female', 'Indianapolis', 'Kinh', 'Catholicism', 'nbox4@icq.com', '23 Sunbrook Point', '5', '10');
INSERT INTO student (id, first_name, last_name, birth_date, gender, home_town, ethnic, religion, email, address, class_id, parent_id) VALUES ('6', 'Kurt', 'Meaker', '18/01/2003', 'Male', 'Khirbat Tīn Nūr', 'Hoa', 'Protestantism', 'kmeaker5@sbwire.com', '5 Warner Circle', '6', '4');
INSERT INTO student (id, first_name, last_name, birth_date, gender, home_town, ethnic, religion, email, address, class_id, parent_id) VALUES ('7', 'Maribeth', 'Jobe', '13/07/2008', 'Female', 'Guiwu', 'Hoa', 'None', 'mjobe6@sitemeter.com', '0 Sherman Court', '7', '14');
INSERT INTO student (id, first_name, last_name, birth_date, gender, home_town, ethnic, religion, email, address, class_id, parent_id) VALUES ('8', 'Mellicent', 'Cod', '17/11/2017', 'Female', 'Anambongan', 'Hoa', 'None', 'mcod7@opensource.org', '99894 Norway Maple Center', '8', '18');
INSERT INTO student (id, first_name, last_name, birth_date, gender, home_town, ethnic, religion, email, address, class_id, parent_id) VALUES ('9', 'Fabien', 'Chong', '25/09/2005', 'Male', 'Chencai', 'Hoa', 'Christianity', 'fchong8@e-recht24.de', '8635 New Castle Trail', '9', '7');
INSERT INTO student (id, first_name, last_name, birth_date, gender, home_town, ethnic, religion, email, address, class_id, parent_id) VALUES ('10', 'Kevina', 'Bastable', '14/03/2002', 'Female', 'Ngaliyan', 'Kinh', 'None', 'kbastable9@liveinternet.ru', '2 Oak Road', '10', '38');
INSERT INTO student (id, first_name, last_name, birth_date, gender, home_town, ethnic, religion, email, address, class_id, parent_id) VALUES ('11', 'Robbie', 'Rutigliano', '09/09/2014', 'Male', 'Ayolas', 'Hoa', 'None', 'rrutiglianoa@nih.gov', '851 East Park', '1', '4');
INSERT INTO student (id, first_name, last_name, birth_date, gender, home_town, ethnic, religion, email, address, class_id, parent_id) VALUES ('12', 'Roderick', 'Lakeman', '19/08/2005', 'Male', 'Nedakonice', 'Kinh', 'Christianity', 'rlakemanb@webnode.com', '809 Linden Plaza', '2', '8');
INSERT INTO student (id, first_name, last_name, birth_date, gender, home_town, ethnic, religion, email, address, class_id, parent_id) VALUES ('13', 'Gerhardt', 'Olennikov', '06/10/2020', 'Male', 'Bohorodchany', 'Kinh', 'Protestantism', 'golennikovc@state.tx.us', '72208 Welch Trail', '3', '27');
INSERT INTO student (id, first_name, last_name, birth_date, gender, home_town, ethnic, religion, email, address, class_id, parent_id) VALUES ('14', 'Herrick', 'Wickwarth', '03/07/2019', 'Male', 'Ostrów Mazowiecka', 'Kinh', 'None', 'hwickwarthd@netscape.com', '58496 Coleman Way', '4', '40');
INSERT INTO student (id, first_name, last_name, birth_date, gender, home_town, ethnic, religion, email, address, class_id, parent_id) VALUES ('15', 'Jenn', 'Shilstone', '09/08/2005', 'Female', 'Padangbai', 'Kinh', 'Protestantism', 'jshilstonee@twitter.com', '23 Knutson Terrace', '5', '17');
INSERT INTO student (id, first_name, last_name, birth_date, gender, home_town, ethnic, religion, email, address, class_id, parent_id) VALUES ('16', 'Kanya', 'Dullard', '08/03/2018', 'Female', 'Evansville', 'Kinh', 'None', 'kdullardf@wiley.com', '46934 Vahlen Circle', '6', '29');
INSERT INTO student (id, first_name, last_name, birth_date, gender, home_town, ethnic, religion, email, address, class_id, parent_id) VALUES ('17', 'Garry', 'Giacopetti', '05/07/2005', 'Male', 'Ribaldeira', 'Kinh', 'Catholicism', 'ggiacopettig@bluehost.com', '5560 Golf View Junction', '7', '35');
INSERT INTO student (id, first_name, last_name, birth_date, gender, home_town, ethnic, religion, email, address, class_id, parent_id) VALUES ('18', 'Archy', 'Gladdish', '28/05/2005', 'Male', 'Lavradio', 'Kinh', 'None', 'agladdishh@cyberchimps.com', '21 Saint Paul Center', '8', '14');
INSERT INTO student (id, first_name, last_name, birth_date, gender, home_town, ethnic, religion, email, address, class_id, parent_id) VALUES ('19', 'Nerty', 'Cosgrove', '27/03/2020', 'Female', 'Nikel’', 'Hoa', 'Buddhism', 'ncosgrovei@disqus.com', '36722 Birchwood Hill', '9', '9');
INSERT INTO student (id, first_name, last_name, birth_date, gender, home_town, ethnic, religion, email, address, class_id, parent_id) VALUES ('20', 'Saree', 'Sebley', '19/06/2017', 'Female', 'Le Cannet', 'Hoa', 'None', 'ssebleyj@infoseek.co.jp', '38 Union Terrace', '10', '30');
INSERT INTO student (id, first_name, last_name, birth_date, gender, home_town, ethnic, religion, email, address, class_id, parent_id) VALUES ('21', 'Fran', 'Brunone', '10/02/2003', 'Male', 'Reforma', 'Hoa', 'Protestantism', 'fbrunonek@creativecommons.org', '6 Towne Junction', '1', '38');
INSERT INTO student (id, first_name, last_name, birth_date, gender, home_town, ethnic, religion, email, address, class_id, parent_id) VALUES ('22', 'Natala', 'McCosker', '22/01/2003', 'Female', 'Wuli', 'Hoa', 'None', 'nmccoskerl@nsw.gov.au', '7903 Ruskin Street', '2', '30');
INSERT INTO student (id, first_name, last_name, birth_date, gender, home_town, ethnic, religion, email, address, class_id, parent_id) VALUES ('23', 'Gare', 'Guyot', '07/08/2003', 'Male', 'Askim', 'Hoa', 'None', 'gguyotm@army.mil', '42 Burning Wood Crossing', '3', '35');
INSERT INTO student (id, first_name, last_name, birth_date, gender, home_town, ethnic, religion, email, address, class_id, parent_id) VALUES ('24', 'Kinny', 'Kwietek', '22/06/2008', 'Male', 'Tanglag', 'Hoa', 'Protestantism', 'kkwietekn@reverbnation.com', '56 Killdeer Street', '4', '3');
INSERT INTO student (id, first_name, last_name, birth_date, gender, home_town, ethnic, religion, email, address, class_id, parent_id) VALUES ('25', 'Cordey', 'De Bruyn', '16/02/2022', 'Female', 'Muslyumovo', 'Kinh', 'Protestantism', 'cdebruyno@shop-pro.jp', '03231 Del Sol Court', '5', '26');
INSERT INTO student (id, first_name, last_name, birth_date, gender, home_town, ethnic, religion, email, address, class_id, parent_id) VALUES ('26', 'Horton', 'Fancet', '09/02/2002', 'Male', 'Cendagah', 'Kinh', 'Protestantism', 'hfancetp@salon.com', '89446 Mifflin Center', '6', '25');
INSERT INTO student (id, first_name, last_name, birth_date, gender, home_town, ethnic, religion, email, address, class_id, parent_id) VALUES ('27', 'Frannie', 'Jewsbury', '31/05/2008', 'Female', 'Fajões', 'Hoa', 'Protestantism', 'fjewsburyq@mediafire.com', '25878 Spohn Court', '7', '8');
INSERT INTO student (id, first_name, last_name, birth_date, gender, home_town, ethnic, religion, email, address, class_id, parent_id) VALUES ('28', 'Traci', 'Ayres', '07/10/2021', 'Non-binary', 'Eskilstuna', 'Kinh', 'None', 'tayresr@hatena.ne.jp', '77 Havey Court', '8', '28');
INSERT INTO student (id, first_name, last_name, birth_date, gender, home_town, ethnic, religion, email, address, class_id, parent_id) VALUES ('29', 'Barthel', 'Haliday', '03/12/2002', 'Male', 'Kawahmanuk', 'Kinh', 'None', 'bhalidays@mtv.com', '9714 Melrose Alley', '9', '5');
INSERT INTO student (id, first_name, last_name, birth_date, gender, home_town, ethnic, religion, email, address, class_id, parent_id) VALUES ('30', 'Liuka', 'Stairmond', '25/10/2002', 'Female', 'Manassas', 'Kinh', 'Catholicism', 'lstairmondt@apache.org', '4977 Wayridge Junction', '10', '13');
INSERT INTO student (id, first_name, last_name, birth_date, gender, home_town, ethnic, religion, email, address, class_id, parent_id) VALUES ('31', 'Caitlin', 'Ravenhills', '09/06/2014', 'Female', 'Papágou', 'Kinh', 'None', 'cravenhillsu@usgs.gov', '7 Pine View Parkway', '1', '25');
INSERT INTO student (id, first_name, last_name, birth_date, gender, home_town, ethnic, religion, email, address, class_id, parent_id) VALUES ('32', 'Lonnie', 'Ellar', '22/01/2022', 'Male', 'Vales', 'Hoa', 'Protestantism', 'lellarv@google.pl', '928 Manitowish Plaza', '2', '14');
INSERT INTO student (id, first_name, last_name, birth_date, gender, home_town, ethnic, religion, email, address, class_id, parent_id) VALUES ('33', 'Mackenzie', 'Bendel', '21/03/2005', 'Male', 'Rad�?‘', 'Kinh', 'Protestantism', 'mbendelw@homestead.com', '377 Delaware Court', '3', '8');
INSERT INTO student (id, first_name, last_name, birth_date, gender, home_town, ethnic, religion, email, address, class_id, parent_id) VALUES ('34', 'Miquela', 'Keyser', '24/03/2018', 'Female', 'Ciketak', 'Hoa', 'Protestantism', 'mkeyserx@mtv.com', '367 American Drive', '4', '36');
INSERT INTO student (id, first_name, last_name, birth_date, gender, home_town, ethnic, religion, email, address, class_id, parent_id) VALUES ('35', 'Belvia', 'Oddie', '19/09/2006', 'Female', 'Bumpe', 'Kinh', 'None', 'boddiey@va.gov', '363 American Ash Plaza', '5', '2');
INSERT INTO student (id, first_name, last_name, birth_date, gender, home_town, ethnic, religion, email, address, class_id, parent_id) VALUES ('36', 'Giff', 'Cadigan', '10/02/2013', 'Male', 'Lungaog', 'Kinh', 'Buddhism', 'gcadiganz@state.tx.us', '0 Melvin Road', '6', '16');
INSERT INTO student (id, first_name, last_name, birth_date, gender, home_town, ethnic, religion, email, address, class_id, parent_id) VALUES ('37', 'Earlie', 'Twydell', '25/02/2002', 'Male', 'Biao', 'Kinh', 'None', 'etwydell10@technorati.com', '54113 Sutherland Plaza', '7', '37');
INSERT INTO student (id, first_name, last_name, birth_date, gender, home_town, ethnic, religion, email, address, class_id, parent_id) VALUES ('38', 'Anne-corinne', 'Safhill', '27/08/2022', 'Female', 'Chengyue', 'Kinh', 'None', 'asafhill11@freewebs.com', '257 Union Lane', '8', '8');
INSERT INTO student (id, first_name, last_name, birth_date, gender, home_town, ethnic, religion, email, address, class_id, parent_id) VALUES ('39', 'Deane', 'Lakin', '04/11/2016', 'Male', 'Hamar', 'Hoa', 'None', 'dlakin12@typepad.com', '1359 Judy Circle', '9', '20');
INSERT INTO student (id, first_name, last_name, birth_date, gender, home_town, ethnic, religion, email, address, class_id, parent_id) VALUES ('40', 'Cristabel', 'Ossulton', '11/03/2020', 'Female', 'Midleton', 'Kinh', 'None', 'cossulton13@umn.edu', '6586 Atwood Terrace', '10', '13');
INSERT INTO student (id, first_name, last_name, birth_date, gender, home_town, ethnic, religion, email, address, class_id, parent_id) VALUES ('41', 'Zelma', 'Spark', '05/06/2000', 'Female', 'Ashford', 'Kinh', 'None', 'zspark14@tinyurl.com', '21109 Eastlawn Junction', '1', '9');
INSERT INTO student (id, first_name, last_name, birth_date, gender, home_town, ethnic, religion, email, address, class_id, parent_id) VALUES ('42', 'Frazer', 'Mateja', '10/11/2002', 'Male', 'Kalá Déndra', 'Kinh', 'None', 'fmateja15@about.me', '05 Briar Crest Avenue', '2', '8');
INSERT INTO student (id, first_name, last_name, birth_date, gender, home_town, ethnic, religion, email, address, class_id, parent_id) VALUES ('43', 'Demetre', 'De Lorenzo', '19/11/2003', 'Male', 'Hufeng', 'Hoa', 'Protestantism', 'ddelorenzo16@oakley.com', '1098 Union Court', '3', '11');
INSERT INTO student (id, first_name, last_name, birth_date, gender, home_town, ethnic, religion, email, address, class_id, parent_id) VALUES ('44', 'Caroline', 'Korlat', '27/06/2019', 'Female', 'Ronda', 'Hoa', 'Protestantism', 'ckorlat17@apple.com', '26928 Hallows Center', '4', '17');
INSERT INTO student (id, first_name, last_name, birth_date, gender, home_town, ethnic, religion, email, address, class_id, parent_id) VALUES ('45', 'Robenia', 'Lewis', '13/02/2017', 'Bigender', 'Ouro Sogui', 'Hoa', 'Protestantism', 'rlewis18@123-reg.co.uk', '2052 Alpine Circle', '5', '20');
INSERT INTO student (id, first_name, last_name, birth_date, gender, home_town, ethnic, religion, email, address, class_id, parent_id) VALUES ('46', 'Kamila', 'Steeden', '13/12/2001', 'Female', 'Primero de Enero', 'Hoa', 'Catholicism', 'ksteeden19@ehow.com', '8541 Mesta Road', '6', '11');
INSERT INTO student (id, first_name, last_name, birth_date, gender, home_town, ethnic, religion, email, address, class_id, parent_id) VALUES ('47', 'Angelia', 'Drummond', '12/09/2005', 'Female', 'Chengzhong', 'Hoa', 'None', 'adrummond1a@godaddy.com', '3 Reindahl Circle', '7', '2');
INSERT INTO student (id, first_name, last_name, birth_date, gender, home_town, ethnic, religion, email, address, class_id, parent_id) VALUES ('48', 'Beverly', 'Maylour', '05/10/2007', 'Female', 'Ambato', 'Kinh', 'None', 'bmaylour1b@lulu.com', '7145 Spaight Avenue', '8', '25');
INSERT INTO student (id, first_name, last_name, birth_date, gender, home_town, ethnic, religion, email, address, class_id, parent_id) VALUES ('49', 'Pamela', 'Vallantine', '09/07/2007', 'Female', 'Kedawung', 'Hoa', 'None', 'pvallantine1c@bizjournals.com', '5 Kim Way', '9', '36');
INSERT INTO student (id, first_name, last_name, birth_date, gender, home_town, ethnic, religion, email, address, class_id, parent_id) VALUES ('50', 'Linnet', 'Sharpous', '05/08/2017', 'Female', 'Fuzhiping', 'Hoa', 'Protestantism', 'lsharpous1d@sun.com', '9 Bluestem Plaza', '10', '2');
INSERT INTO student (id, first_name, last_name, birth_date, gender, home_town, ethnic, religion, email, address, class_id, parent_id) VALUES ('51', 'Biddie', 'Stansfield', '19/08/2017', 'Female', 'Koilás', 'Hoa', 'Catholicism', 'bstansfield1e@infoseek.co.jp', '92 Victoria Plaza', '1', '14');
INSERT INTO student (id, first_name, last_name, birth_date, gender, home_town, ethnic, religion, email, address, class_id, parent_id) VALUES ('52', 'Cleon', 'Morrish', '02/02/2006', 'Male', 'Cibeureum', 'Hoa', 'Catholicism', 'cmorrish1f@ycombinator.com', '00 Esch Hill', '2', '34');
INSERT INTO student (id, first_name, last_name, birth_date, gender, home_town, ethnic, religion, email, address, class_id, parent_id) VALUES ('53', 'Leontine', 'Mumm', '24/07/2001', 'Female', 'Pampa de los Guanacos', 'Hoa', 'Buddhism', 'lmumm1g@washingtonpost.com', '9 Bunting Junction', '3', '32');
INSERT INTO student (id, first_name, last_name, birth_date, gender, home_town, ethnic, religion, email, address, class_id, parent_id) VALUES ('54', 'Ferris', 'Duxbarry', '20/05/2005', 'Male', 'Vetluga', 'Hoa', 'None', 'fduxbarry1h@tripadvisor.com', '57151 Manitowish Alley', '4', '35');
INSERT INTO student (id, first_name, last_name, birth_date, gender, home_town, ethnic, religion, email, address, class_id, parent_id) VALUES ('55', 'Innis', 'Antrim', '17/04/2020', 'Male', 'Runting', 'Kinh', 'Buddhism', 'iantrim1i@virginia.edu', '370 6th Plaza', '5', '40');
INSERT INTO student (id, first_name, last_name, birth_date, gender, home_town, ethnic, religion, email, address, class_id, parent_id) VALUES ('56', 'Maddie', 'Mathis', '29/03/2005', 'Male', 'Ketanggi', 'Kinh', 'None', 'mmathis1j@scientificamerican.com', '5 Clove Avenue', '6', '8');
INSERT INTO student (id, first_name, last_name, birth_date, gender, home_town, ethnic, religion, email, address, class_id, parent_id) VALUES ('57', 'Avigdor', 'Lashmore', '25/09/2018', 'Male', 'Liping', 'Hoa', 'Protestantism', 'alashmore1k@umich.edu', '697 Dryden Lane', '7', '2');
INSERT INTO student (id, first_name, last_name, birth_date, gender, home_town, ethnic, religion, email, address, class_id, parent_id) VALUES ('58', 'Poul', 'Buckel', '04/10/2004', 'Non-binary', 'Los Fresnos', 'Hoa', 'Protestantism', 'pbuckel1l@bizjournals.com', '462 Manley Road', '8', '3');
INSERT INTO student (id, first_name, last_name, birth_date, gender, home_town, ethnic, religion, email, address, class_id, parent_id) VALUES ('59', 'Shaine', 'Arni', '19/03/2003', 'Male', 'Buhe', 'Hoa', 'None', 'sarni1m@nifty.com', '4 Utah Park', '9', '28');
INSERT INTO student (id, first_name, last_name, birth_date, gender, home_town, ethnic, religion, email, address, class_id, parent_id) VALUES ('60', 'Morgen', 'Chave', '19/02/2018', 'Male', 'Montfavet', 'Kinh', 'None', 'mchave1n@mozilla.com', '4084 Hermina Trail', '10', '12');

CREATE TABLE course 
(
    id	INT,
    subject_id	INT,
    teacher_id	INT,
    semester	VARCHAR(512)
);

INSERT INTO course (id, subject_id, teacher_id, semester) VALUES ('1', '2', '19', 'HK201');
INSERT INTO course (id, subject_id, teacher_id, semester) VALUES ('2', '4', '11', 'HK203');
INSERT INTO course (id, subject_id, teacher_id, semester) VALUES ('3', '5', '25', 'HK223');
INSERT INTO course (id, subject_id, teacher_id, semester) VALUES ('4', '15', '11', 'HK223');
INSERT INTO course (id, subject_id, teacher_id, semester) VALUES ('5', '8', '26', 'HK223');
INSERT INTO course (id, subject_id, teacher_id, semester) VALUES ('6', '5', '13', 'HK211');
INSERT INTO course (id, subject_id, teacher_id, semester) VALUES ('7', '2', '17', 'HK222');
INSERT INTO course (id, subject_id, teacher_id, semester) VALUES ('8', '9', '11', 'HK223');
INSERT INTO course (id, subject_id, teacher_id, semester) VALUES ('9', '2', '15', 'HK203');
INSERT INTO course (id, subject_id, teacher_id, semester) VALUES ('10', '3', '24', 'HK223');
INSERT INTO course (id, subject_id, teacher_id, semester) VALUES ('11', '8', '18', 'HK221');
INSERT INTO course (id, subject_id, teacher_id, semester) VALUES ('12', '1', '27', 'HK223');
INSERT INTO course (id, subject_id, teacher_id, semester) VALUES ('13', '13', '10', 'HK213');
INSERT INTO course (id, subject_id, teacher_id, semester) VALUES ('14', '10', '14', 'HK203');
INSERT INTO course (id, subject_id, teacher_id, semester) VALUES ('15', '4', '15', 'HK223');
INSERT INTO course (id, subject_id, teacher_id, semester) VALUES ('16', '10', '14', 'HK203');
INSERT INTO course (id, subject_id, teacher_id, semester) VALUES ('17', '4', '11', 'HK223');
INSERT INTO course (id, subject_id, teacher_id, semester) VALUES ('18', '14', '10', 'HK203');
INSERT INTO course (id, subject_id, teacher_id, semester) VALUES ('19', '2', '12', 'HK223');
INSERT INTO course (id, subject_id, teacher_id, semester) VALUES ('20', '16', '15', 'HK221');
INSERT INTO course (id, subject_id, teacher_id, semester) VALUES ('21', '8', '15', 'HK213');
INSERT INTO course (id, subject_id, teacher_id, semester) VALUES ('22', '11', '22', 'HK213');
INSERT INTO course (id, subject_id, teacher_id, semester) VALUES ('23', '11', '11', 'HK202');
INSERT INTO course (id, subject_id, teacher_id, semester) VALUES ('24', '9', '20', 'HK222');
INSERT INTO course (id, subject_id, teacher_id, semester) VALUES ('25', '9', '27', 'HK202');
INSERT INTO course (id, subject_id, teacher_id, semester) VALUES ('26', '10', '22', 'HK221');
INSERT INTO course (id, subject_id, teacher_id, semester) VALUES ('27', '7', '19', 'HK213');
INSERT INTO course (id, subject_id, teacher_id, semester) VALUES ('28', '9', '10', 'HK202');
INSERT INTO course (id, subject_id, teacher_id, semester) VALUES ('29', '18', '16', 'HK222');
INSERT INTO course (id, subject_id, teacher_id, semester) VALUES ('30', '13', '24', 'HK223');
INSERT INTO course (id, subject_id, teacher_id, semester) VALUES ('31', '2', '17', 'HK201');
INSERT INTO course (id, subject_id, teacher_id, semester) VALUES ('32', '18', '19', 'HK222');
INSERT INTO course (id, subject_id, teacher_id, semester) VALUES ('33', '12', '17', 'HK223');
INSERT INTO course (id, subject_id, teacher_id, semester) VALUES ('34', '13', '10', 'HK223');
INSERT INTO course (id, subject_id, teacher_id, semester) VALUES ('35', '14', '20', 'HK211');
INSERT INTO course (id, subject_id, teacher_id, semester) VALUES ('36', '9', '11', 'HK213');
INSERT INTO course (id, subject_id, teacher_id, semester) VALUES ('37', '12', '11', 'HK212');
INSERT INTO course (id, subject_id, teacher_id, semester) VALUES ('38', '8', '14', 'HK223');
INSERT INTO course (id, subject_id, teacher_id, semester) VALUES ('39', '16', '15', 'HK202');
INSERT INTO course (id, subject_id, teacher_id, semester) VALUES ('40', '8', '21', 'HK222');
INSERT INTO course (id, subject_id, teacher_id, semester) VALUES ('41', '10', '20', 'HK213');
INSERT INTO course (id, subject_id, teacher_id, semester) VALUES ('42', '6', '23', 'HK223');
INSERT INTO course (id, subject_id, teacher_id, semester) VALUES ('43', '1', '18', 'HK212');
INSERT INTO course (id, subject_id, teacher_id, semester) VALUES ('44', '3', '11', 'HK223');
INSERT INTO course (id, subject_id, teacher_id, semester) VALUES ('45', '5', '19', 'HK213');


CREATE TABLE course_score 
(
    id	INT,
    course_id	INT,
    student_id	INT,
    midterm	REAL,
    final	REAL,
    score	REAL
);

INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('1', '1', '1', '6.49', '3.66', '4.51');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('2', '2', '2', '4.76', '6.48', '5.96');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('3', '3', '3', '4.76', '1.26', '2.31');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('4', '4', '4', '8.3', '2.09', '3.95');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('5', '5', '5', '5.94', '7.99', '7.38');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('6', '6', '6', '2.69', '3.68', '3.38');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('7', '7', '7', '7.34', '9.41', '8.79');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('8', '8', '8', '7.4', '0.95', '2.88');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('9', '9', '9', '2.31', '8.26', '6.48');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('10', '10', '10', '2.41', '0.63', '1.16');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('11', '11', '11', '1.92', '0.37', '0.84');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('12', '12', '12', '9.27', '3.71', '5.38');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('13', '13', '13', '6.61', '4.0', '4.78');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('14', '14', '14', '9.25', '6.52', '7.34');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('15', '15', '15', '3.07', '3.11', '3.10');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('16', '16', '16', '2.21', '6.61', '5.29');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('17', '17', '17', '4.93', '5.09', '5.04');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('18', '18', '18', '3.91', '6.83', '5.95');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('19', '19', '19', '3.44', '5.95', '5.20');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('20', '20', '20', '2.8', '1.2', '1.68');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('21', '21', '21', '3.54', '7.65', '6.42');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('22', '22', '22', '2.36', '9.22', '7.16');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('23', '23', '23', '6.25', '5.63', '5.82');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('24', '24', '24', '6.1', '8.73', '7.94');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('25', '25', '25', '0.22', '8.97', '6.34');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('26', '26', '26', '2.33', '2.66', '2.56');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('27', '27', '27', '0.84', '8.31', '6.07');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('28', '28', '28', '6.13', '4.6', '5.06');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('29', '29', '29', '6.39', '2.33', '3.55');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('30', '30', '30', '7.6', '7.75', '7.70');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('31', '31', '31', '0.34', '7.47', '5.33');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('32', '32', '32', '8.72', '5.53', '6.49');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('33', '33', '33', '2.86', '9.84', '7.75');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('34', '34', '34', '0.02', '9.04', '6.33');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('35', '35', '35', '0.83', '2.12', '1.73');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('36', '36', '36', '3.18', '2.48', '2.69');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('37', '37', '37', '2.79', '9.4', '7.42');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('38', '38', '38', '5.22', '6.54', '6.14');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('39', '39', '39', '5.37', '0.59', '2.02');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('40', '40', '40', '3.94', '4.21', '4.13');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('41', '41', '41', '2.54', '2.13', '2.25');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('42', '42', '42', '6.04', '4.29', '4.82');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('43', '43', '43', '3.12', '4.92', '4.38');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('44', '44', '44', '3.71', '6.52', '5.68');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('45', '45', '45', '4.11', '1.62', '2.37');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('46', '1', '46', '0.23', '3.22', '2.32');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('47', '2', '47', '2.26', '6.29', '5.08');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('48', '3', '48', '6.17', '4.14', '4.75');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('49', '4', '49', '5.7', '0.04', '1.74');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('50', '5', '50', '5.29', '7.76', '7.02');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('51', '6', '51', '7.49', '7.68', '7.62');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('52', '7', '52', '9.45', '1.23', '3.70');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('53', '8', '53', '7.54', '9.84', '9.15');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('54', '9', '54', '7.78', '8.25', '8.11');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('55', '10', '55', '3.68', '5.02', '4.62');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('56', '11', '56', '9.25', '5.93', '6.93');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('57', '12', '57', '1.05', '6.67', '4.98');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('58', '13', '58', '2.81', '4.3', '3.85');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('59', '14', '59', '7.3', '6.1', '6.46');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('60', '15', '60', '0.31', '3.34', '2.43');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('61', '16', '1', '2.78', '5.9', '4.96');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('62', '17', '2', '8.5', '3.69', '5.13');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('63', '18', '3', '0.26', '8.67', '6.15');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('64', '19', '4', '9.32', '3.3', '5.11');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('65', '20', '5', '6.24', '4.85', '5.27');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('66', '21', '6', '5.56', '4.67', '4.94');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('67', '22', '7', '0.95', '7.37', '5.44');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('68', '23', '8', '9.33', '9.71', '9.60');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('69', '24', '9', '9.86', '2.94', '5.02');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('70', '25', '10', '8.11', '5.69', '6.42');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('71', '26', '11', '0.72', '3.09', '2.38');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('72', '27', '12', '1.92', '7.63', '5.92');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('73', '28', '13', '7.84', '6.28', '6.75');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('74', '29', '14', '4.28', '4.89', '4.71');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('75', '30', '15', '1.78', '1.33', '1.46');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('76', '31', '16', '9.08', '6.29', '7.13');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('77', '32', '17', '2.59', '0.91', '1.41');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('78', '33', '18', '8.24', '3.35', '4.82');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('79', '34', '19', '3.05', '9.44', '7.52');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('80', '35', '20', '2.66', '3.3', '3.11');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('81', '36', '21', '8.08', '8.4', '8.30');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('82', '37', '22', '1.92', '5.32', '4.30');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('83', '38', '23', '4.56', '1.33', '2.30');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('84', '39', '24', '4.59', '1.93', '2.73');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('85', '40', '25', '4.86', '6.79', '6.21');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('86', '41', '26', '8.84', '1.21', '3.50');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('87', '42', '27', '3.11', '4.88', '4.35');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('88', '43', '28', '2.21', '0.78', '1.21');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('89', '44', '29', '3.62', '8.76', '7.22');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('90', '45', '30', '2.13', '5.81', '4.71');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('91', '1', '31', '1.72', '6.58', '5.12');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('92', '2', '32', '4.76', '7.34', '6.57');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('93', '3', '33', '7.69', '6.77', '7.05');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('94', '4', '34', '4.81', '2.28', '3.04');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('95', '5', '35', '2.71', '3.52', '3.28');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('96', '6', '36', '1.37', '6.01', '4.62');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('97', '7', '37', '3.68', '8.71', '7.20');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('98', '8', '38', '1.21', '5.47', '4.19');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('99', '9', '39', '4.84', '6.03', '5.67');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('100', '10', '40', '9.97', '6.32', '7.42');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('101', '11', '41', '5.31', '8.25', '7.37');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('102', '12', '42', '6.88', '6.23', '6.42');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('103', '13', '43', '5.25', '6.48', '6.11');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('104', '14', '44', '8.21', '2.56', '4.26');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('105', '15', '45', '4.26', '9.85', '8.17');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('106', '16', '46', '6.21', '6.43', '6.36');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('107', '17', '47', '7.74', '3.52', '4.79');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('108', '18', '48', '2.35', '3.34', '3.04');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('109', '19', '49', '8.84', '9.48', '9.29');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('110', '20', '50', '2.85', '6.95', '5.72');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('111', '21', '51', '1.38', '3.49', '2.86');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('112', '22', '52', '2.18', '0.79', '1.21');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('113', '23', '53', '6.14', '1.12', '2.63');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('114', '24', '54', '2.29', '8.83', '6.87');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('115', '25', '55', '2.17', '8.73', '6.76');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('116', '26', '56', '2.24', '4.5', '3.82');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('117', '27', '57', '7.61', '6.04', '6.51');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('118', '28', '58', '3.29', '0.04', '1.02');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('119', '29', '59', '2.19', '6.19', '4.99');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('120', '30', '60', '4.66', '2.71', '3.30');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('121', '31', '1', '5.59', '3.41', '4.06');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('122', '32', '2', '6.85', '2.82', '4.03');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('123', '33', '3', '5.35', '5.86', '5.71');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('124', '34', '4', '6.91', '4.43', '5.17');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('125', '35', '5', '4.44', '8.49', '7.28');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('126', '36', '6', '8.64', '5.03', '6.11');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('127', '37', '7', '5.22', '0.4', '1.85');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('128', '38', '8', '9.34', '0.46', '3.12');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('129', '39', '9', '2.73', '8.13', '6.51');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('130', '40', '10', '0.01', '6.07', '4.25');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('131', '41', '11', '3.82', '7.89', '6.67');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('132', '42', '12', '2.17', '8.29', '6.45');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('133', '43', '13', '0.78', '9.21', '6.68');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('134', '44', '14', '4.7', '7.48', '6.65');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('135', '45', '15', '4.11', '7.64', '6.58');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('136', '1', '16', '9.06', '2.33', '4.35');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('137', '2', '17', '9.51', '7.84', '8.34');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('138', '3', '18', '3.61', '3.44', '3.49');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('139', '4', '19', '3.13', '5.89', '5.06');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('140', '5', '20', '3.32', '1.93', '2.35');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('141', '6', '21', '0.5', '1.95', '1.52');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('142', '7', '22', '0.88', '7.8', '5.72');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('143', '8', '23', '0.17', '4.0', '2.85');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('144', '9', '24', '9.96', '7.6', '8.31');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('145', '10', '25', '2.95', '0.44', '1.19');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('146', '11', '26', '9.48', '3.08', '5.00');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('147', '12', '27', '5.33', '2.77', '3.54');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('148', '13', '28', '3.42', '2.56', '2.82');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('149', '14', '29', '3.42', '5.22', '4.68');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('150', '15', '30', '7.5', '6.15', '6.56');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('151', '16', '31', '6.37', '6.31', '6.33');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('152', '17', '32', '0.39', '3.14', '2.32');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('153', '18', '33', '8.01', '5.3', '6.11');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('154', '19', '34', '3.09', '6.98', '5.81');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('155', '20', '35', '3.15', '1.63', '2.09');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('156', '21', '36', '0.3', '7.15', '5.10');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('157', '22', '37', '6.91', '3.77', '4.71');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('158', '23', '38', '0.32', '6.74', '4.81');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('159', '24', '39', '4.78', '9.02', '7.75');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('160', '25', '40', '6.47', '4.67', '5.21');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('161', '26', '41', '4.19', '3.16', '3.47');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('162', '27', '42', '4.82', '7.51', '6.70');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('163', '28', '43', '5.65', '3.69', '4.28');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('164', '29', '44', '6.0', '7.17', '6.82');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('165', '30', '45', '3.83', '8.13', '6.84');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('166', '31', '46', '7.19', '8.87', '8.37');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('167', '32', '47', '1.73', '7.33', '5.65');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('168', '33', '48', '9.48', '3.45', '5.26');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('169', '34', '49', '7.32', '5.76', '6.23');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('170', '35', '50', '0.53', '9.6', '6.88');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('171', '36', '51', '4.23', '4.97', '4.75');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('172', '37', '52', '2.73', '7.85', '6.31');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('173', '38', '53', '0.06', '0.32', '0.24');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('174', '39', '54', '6.23', '4.99', '5.36');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('175', '40', '55', '7.67', '6.9', '7.13');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('176', '41', '56', '2.08', '2.07', '2.07');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('177', '42', '57', '7.11', '4.12', '5.02');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('178', '43', '58', '0.28', '3.44', '2.49');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('179', '44', '59', '5.14', '2.4', '3.22');
INSERT INTO course_score (id, course_id, student_id, midterm, final, score) VALUES ('180', '45', '60', '7.55', '4.7', '5.56');
