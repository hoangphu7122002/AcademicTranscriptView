drop table system.course_score;
drop table system.course;
drop table system.faculty;
drop table system.parent;
drop table system.faculty;
drop table system.class;
drop table system.teacher;
drop table system.subject;
drop table system.department;



CREATE TABLE faculty 
(
    id	VARCHAR(512),
    faculty_name	VARCHAR(512),
    dean	INT
);

INSERT INTO faculty (id, faculty_name, dean) VALUES ('1', 'Applied Science', '11');
INSERT INTO faculty (id, faculty_name, dean) VALUES ('2', 'Electrical and Electronics Engineering', '9');
INSERT INTO faculty (id, faculty_name, dean) VALUES ('3', 'Computer Science and Engineering', '3');


CREATE TABLE department 
(
    id	INT,
    dept_head	INT,
    dept_mame	VARCHAR(512),
    faculty_id	VARCHAR(512)
);

INSERT INTO department (id, dept_head, dept_mame, faculty_id) VALUES ('1', '5', 'Applied Math', '1');
INSERT INTO department (id, dept_head, dept_mame, faculty_id) VALUES ('2', '4', 'Political theory', '1');
INSERT INTO department (id, dept_head, dept_mame, faculty_id) VALUES ('3', '1', 'Electrical engineering', '2');
INSERT INTO department (id, dept_head, dept_mame, faculty_id) VALUES ('4', '2', 'Control engineering - automation', '2');
INSERT INTO department (id, dept_head, dept_mame, faculty_id) VALUES ('5', '19', 'Computer Science', '3');
INSERT INTO department (id, dept_head, dept_mame, faculty_id) VALUES ('6', '18', 'Computer Engineering', '3');

CREATE TABLE subject 
(
    id	INT,
    subject_name	VARCHAR(512),
    credits	INT,
    dept_id	INT
);

INSERT INTO subject (id, subject_name, credits, dept_id) VALUES ('1', 'Analog Signal Processing', '3', '3');
INSERT INTO subject (id, subject_name, credits, dept_id) VALUES ('2', 'Univ Physics Thermal Phys', '3', '3');
INSERT INTO subject (id, subject_name, credits, dept_id) VALUES ('3', 'Intro to Electromagnetic Field', '4', '3');
INSERT INTO subject (id, subject_name, credits, dept_id) VALUES ('4', 'Power Electronics', '3', '4');
INSERT INTO subject (id, subject_name, credits, dept_id) VALUES ('5', 'Electric Machinery', '4', '4');
INSERT INTO subject (id, subject_name, credits, dept_id) VALUES ('6', 'Industrial Quality Control', '3', '4');
INSERT INTO subject (id, subject_name, credits, dept_id) VALUES ('7', 'General Chemistry I', '4', '1');
INSERT INTO subject (id, subject_name, credits, dept_id) VALUES ('8', 'Calculus I', '4', '1');
INSERT INTO subject (id, subject_name, credits, dept_id) VALUES ('9', 'Calculus II', '3', '1');
INSERT INTO subject (id, subject_name, credits, dept_id) VALUES ('10', 'Introduction to Vietnamese Law System', '2', '2');
INSERT INTO subject (id, subject_name, credits, dept_id) VALUES ('11', 'Economics', '2', '2');
INSERT INTO subject (id, subject_name, credits, dept_id) VALUES ('12', 'Basic Principles of Marxism-Leninism', '3', '2');
INSERT INTO subject (id, subject_name, credits, dept_id) VALUES ('13', 'Database Systems', '4', '5');
INSERT INTO subject (id, subject_name, credits, dept_id) VALUES ('14', 'Operating Systems', '3', '5');
INSERT INTO subject (id, subject_name, credits, dept_id) VALUES ('15', 'Principles of Programming Languages', '4', '5');
INSERT INTO subject (id, subject_name, credits, dept_id) VALUES ('16', 'Electronic Devices and Circuit', '3', '6');
INSERT INTO subject (id, subject_name, credits, dept_id) VALUES ('17', 'Computer Architecture', '3', '6');
INSERT INTO subject (id, subject_name, credits, dept_id) VALUES ('18', 'Logic Design Project', '4', '6');

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

INSERT INTO teacher (id, first_name, last_name, birth_date, gender, home_town, email, address, start_date, dept_id) VALUES ('1', 'Guglielma', 'Cheetham', '2/9/1981', 'Genderqueer', 'Jingtou', 'gcheetham0@squarespace.com', '9 Delaware Avenue', '12/8/2012', '3');
INSERT INTO teacher (id, first_name, last_name, birth_date, gender, home_town, email, address, start_date, dept_id) VALUES ('2', 'Iorgo', 'Mazella', '29/06/1984', 'Male', 'Tubarjal', 'imazella1@ovh.net', '3 Kropf Lane', '4/3/2007', '4');
INSERT INTO teacher (id, first_name, last_name, birth_date, gender, home_town, email, address, start_date, dept_id) VALUES ('3', 'Hunter', 'Waberer', '29/10/1986', 'Male', 'Puerto Berro', 'hwaberer2@archive.org', '7 Carey Avenue', '23/09/2007', '6');
INSERT INTO teacher (id, first_name, last_name, birth_date, gender, home_town, email, address, start_date, dept_id) VALUES ('4', 'Parrnell', 'Jillins', '24/06/1990', 'Male', 'Proletarsk', 'pjillins3@foxnews.com', '4 Fulton Avenue', '24/07/2007', '2');
INSERT INTO teacher (id, first_name, last_name, birth_date, gender, home_town, email, address, start_date, dept_id) VALUES ('5', 'Ezechiel', 'Lickess', '16/10/1988', 'Male', 'Heping', 'elickess4@fema.gov', '99 Darwin Park', '3/7/2000', '1');
INSERT INTO teacher (id, first_name, last_name, birth_date, gender, home_town, email, address, start_date, dept_id) VALUES ('6', 'Elfrieda', 'Barrowcliffe', '14/05/1995', 'Female', 'Yuwan', 'ebarrowcliffe5@unicef.org', '0202 South Point', '20/03/2001', '3');
INSERT INTO teacher (id, first_name, last_name, birth_date, gender, home_town, email, address, start_date, dept_id) VALUES ('7', 'Carree', 'Watkiss', '19/08/1987', 'Non-binary', 'Foz do Iguau', 'cwatkiss6@theatlantic.com', '983 Comanche Avenue', '19/10/2007', '2');
INSERT INTO teacher (id, first_name, last_name, birth_date, gender, home_town, email, address, start_date, dept_id) VALUES ('8', 'Trenton', 'Simmens', '21/07/1977', 'Male', 'Gelsenkirchen', 'tsimmens7@123-reg.co.uk', '0406 Lotheville Parkway', '8/10/2018', '5');
INSERT INTO teacher (id, first_name, last_name, birth_date, gender, home_town, email, address, start_date, dept_id) VALUES ('9', 'Martguerita', 'Lammertz', '2/12/1978', 'Female', 'Capito Poo', 'mlammertz8@shutterfly.com', '372 Derek Park', '11/11/2015', '3');
INSERT INTO teacher (id, first_name, last_name, birth_date, gender, home_town, email, address, start_date, dept_id) VALUES ('10', 'Korey', 'Franies', '4/12/1980', 'Male', 'Paris 17', 'kfranies9@ucoz.com', '913 Michigan Lane', '19/05/2009', '2');
INSERT INTO teacher (id, first_name, last_name, birth_date, gender, home_town, email, address, start_date, dept_id) VALUES ('11', 'Kendricks', 'Bonefant', '3/7/1983', 'Male', 'Idi Iroko', 'kbonefanta@army.mil', '5 Judy Terrace', '21/09/2015', '1');
INSERT INTO teacher (id, first_name, last_name, birth_date, gender, home_town, email, address, start_date, dept_id) VALUES ('12', 'Cullin', 'Galbreath', '21/07/1978', 'Male', 'Hohoe', 'cgalbreathb@senate.gov', '3514 Tomscot Place', '30/06/2005', '4');
INSERT INTO teacher (id, first_name, last_name, birth_date, gender, home_town, email, address, start_date, dept_id) VALUES ('13', 'Gard', 'Cortnay', '17/04/1981', 'Male', 'Iradan', 'gcortnayc@elegantthemes.com', '97366 Oriole Road', '21/03/2007', '6');
INSERT INTO teacher (id, first_name, last_name, birth_date, gender, home_town, email, address, start_date, dept_id) VALUES ('14', 'Elmo', 'Rubertelli', '30/09/1990', 'Male', 'Miyako', 'erubertellid@woothemes.com', '521 Fairview Hill', '12/5/2000', '5');
INSERT INTO teacher (id, first_name, last_name, birth_date, gender, home_town, email, address, start_date, dept_id) VALUES ('15', 'Darren', 'Gon', '21/03/1980', 'Polygender', 'Shangrao', 'dgone@buzzfeed.com', '30 Moose Point', '12/8/2005', '2');
INSERT INTO teacher (id, first_name, last_name, birth_date, gender, home_town, email, address, start_date, dept_id) VALUES ('16', 'Gui', 'Fey', '15/08/1990', 'Female', 'Pampa del Infierno', 'gfeyf@goo.gl', '95 Cottonwood Plaza', '17/11/2011', '1');
INSERT INTO teacher (id, first_name, last_name, birth_date, gender, home_town, email, address, start_date, dept_id) VALUES ('17', 'Alonso', 'Rippin', '8/8/1995', 'Male', 'Bulawin', 'aripping@paginegialle.it', '14625 Melody Terrace', '30/05/2014', '1');
INSERT INTO teacher (id, first_name, last_name, birth_date, gender, home_town, email, address, start_date, dept_id) VALUES ('18', 'Claudina', 'Streetley', '24/02/1991', 'Female', 'Ogori-shimogo', 'cstreetleyh@4shared.com', '3758 Waywood Drive', '12/12/2005', '6');
INSERT INTO teacher (id, first_name, last_name, birth_date, gender, home_town, email, address, start_date, dept_id) VALUES ('19', 'Abran', 'Wildgoose', '31/01/1982', 'Genderqueer', 'Koanara', 'awildgoosei@ow.ly', '7442 Jay Center', '26/10/2011', '5');
INSERT INTO teacher (id, first_name, last_name, birth_date, gender, home_town, email, address, start_date, dept_id) VALUES ('20', 'Iris', 'Spurnier', '7/12/1994', 'Polygender', 'Xinan', 'ispurnierj@rakuten.co.jp', '9 Old Shore Trail', '26/01/2015', '4');

CREATE TABLE class 
(
    id	INT,
    form_teacher_id	INT,
    class_name	VARCHAR(512)
);

INSERT INTO class (id, form_teacher_id, class_name) VALUES ('1', '1', 'IT21VT5');
INSERT INTO class (id, form_teacher_id, class_name) VALUES ('2', '2', 'LX20ND4');
INSERT INTO class (id, form_teacher_id, class_name) VALUES ('3', '3', 'BN20SA4');
INSERT INTO class (id, form_teacher_id, class_name) VALUES ('4', '4', 'XJ21RQ5');
INSERT INTO class (id, form_teacher_id, class_name) VALUES ('5', '5', 'SF20QM4');
INSERT INTO class (id, form_teacher_id, class_name) VALUES ('6', '6', 'CT20DN1');
INSERT INTO class (id, form_teacher_id, class_name) VALUES ('7', '7', 'BP20OW5');
INSERT INTO class (id, form_teacher_id, class_name) VALUES ('8', '8', 'SW20XT5');
INSERT INTO class (id, form_teacher_id, class_name) VALUES ('9', '9', 'GF21KS3');
INSERT INTO class (id, form_teacher_id, class_name) VALUES ('10', '10', 'QB20OB5');
INSERT INTO class (id, form_teacher_id, class_name) VALUES ('11', '11', 'YG20SO5');
INSERT INTO class (id, form_teacher_id, class_name) VALUES ('12', '12', 'BG20NC3');
INSERT INTO class (id, form_teacher_id, class_name) VALUES ('13', '13', 'FU20FH5');
INSERT INTO class (id, form_teacher_id, class_name) VALUES ('14', '14', 'BW21MP5');
INSERT INTO class (id, form_teacher_id, class_name) VALUES ('15', '15', 'HR21AN5');
INSERT INTO class (id, form_teacher_id, class_name) VALUES ('16', '16', 'PQ21NZ1');
INSERT INTO class (id, form_teacher_id, class_name) VALUES ('17', '17', 'NA20OS5');
INSERT INTO class (id, form_teacher_id, class_name) VALUES ('18', '18', 'VL21CE5');
INSERT INTO class (id, form_teacher_id, class_name) VALUES ('19', '19', 'FH21EI5');
INSERT INTO class (id, form_teacher_id, class_name) VALUES ('20', '20', 'HV20QX4');

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

INSERT INTO student (id, first_name, last_name, birth_date, gender, home_town, ethnic, religion, email, address, class_id, parent_id) VALUES ('1', 'Caspar', 'Murdoch', '24/01/2016', 'Male', 'Dourados', 'Hoa', 'None', 'cmurdoch0@digg.com', '132 Rowland Court', '11', '1');
INSERT INTO student (id, first_name, last_name, birth_date, gender, home_town, ethnic, religion, email, address, class_id, parent_id) VALUES ('2', 'Vassili', 'Jasper', '9/4/2020', 'Male', 'Bandar-e Mahshahr', 'Hoa', 'Buddhism', 'vjasper1@ftc.gov', '14 Brentwood Avenue', '18', '1');
INSERT INTO student (id, first_name, last_name, birth_date, gender, home_town, ethnic, religion, email, address, class_id, parent_id) VALUES ('3', 'Tabitha', 'Tilson', '6/9/2017', 'Female', 'Horred', 'Kinh', 'None', 'ttilson2@intel.com', '97820 Evergreen Pass', '16', '2');
INSERT INTO student (id, first_name, last_name, birth_date, gender, home_town, ethnic, religion, email, address, class_id, parent_id) VALUES ('4', 'Federico', 'Stringman', '29/06/2001', 'Male', 'Shemonaikha', 'Kinh', 'Protestantism', 'fstringman3@guardian.co.uk', '463 Meadow Vale Street', '14', '3');
INSERT INTO student (id, first_name, last_name, birth_date, gender, home_town, ethnic, religion, email, address, class_id, parent_id) VALUES ('5', 'Jordain', 'Bagley', '11/1/2016', 'Female', 'Ramos West', 'Hoa', 'Catholicism', 'jbagley4@google.co.uk', '897 Warbler Park', '20', '3');
INSERT INTO student (id, first_name, last_name, birth_date, gender, home_town, ethnic, religion, email, address, class_id, parent_id) VALUES ('6', 'Gwyn', 'Staniland', '18/07/2009', 'Female', 'Konobeyevo', 'Kinh', 'None', 'gstaniland5@jalbum.net', '7 Grim Circle', '16', '4');
INSERT INTO student (id, first_name, last_name, birth_date, gender, home_town, ethnic, religion, email, address, class_id, parent_id) VALUES ('7', 'Freeland', 'Choke', '18/01/2002', 'Male', 'Barbacena', 'Hoa', 'Catholicism', 'fchoke6@umn.edu', '40871 Glendale Road', '18', '4');
INSERT INTO student (id, first_name, last_name, birth_date, gender, home_town, ethnic, religion, email, address, class_id, parent_id) VALUES ('8', 'Eimile', 'Gerhartz', '27/07/2020', 'Female', 'Baihe', 'Hoa', 'None', 'egerhartz7@vk.com', '97 Amoth Center', '3', '5');
INSERT INTO student (id, first_name, last_name, birth_date, gender, home_town, ethnic, religion, email, address, class_id, parent_id) VALUES ('9', 'Salomon', 'Varrow', '22/03/2002', 'Male', 'Shiozawa', 'Kinh', 'Buddhism', 'svarrow8@trellian.com', '248 Helena Court', '10', '5');
INSERT INTO student (id, first_name, last_name, birth_date, gender, home_town, ethnic, religion, email, address, class_id, parent_id) VALUES ('10', 'Herman', 'Marsden', '28/04/2017', 'Male', 'Middleton', 'Hoa', 'Protestantism', 'hmarsden9@hc360.com', '911 Lakewood Court', '1', '6');
INSERT INTO student (id, first_name, last_name, birth_date, gender, home_town, ethnic, religion, email, address, class_id, parent_id) VALUES ('11', 'Muhammad', 'Mullally', '29/01/2004', 'Male', 'Ro Tercero', 'Kinh', 'Protestantism', 'momullallya@alexa.com', '8 Bellgrove Plaza', '16', '7');
INSERT INTO student (id, first_name, last_name, birth_date, gender, home_town, ethnic, religion, email, address, class_id, parent_id) VALUES ('12', 'Reed', 'Semered', '8/7/2021', 'Male', 'Podstepki', 'Hoa', 'None', 'rsemeredb@webeden.co.uk', '96 Corry Point', '15', '8');
INSERT INTO student (id, first_name, last_name, birth_date, gender, home_town, ethnic, religion, email, address, class_id, parent_id) VALUES ('13', 'Mohammed', 'Caddell', '23/06/2020', 'Male', 'Huilong', 'Hoa', 'None', 'mcaddellc@jugem.jp', '99273 Farwell Circle', '8', '8');
INSERT INTO student (id, first_name, last_name, birth_date, gender, home_town, ethnic, religion, email, address, class_id, parent_id) VALUES ('14', 'Caryl', 'Sturror', '1/12/2000', 'Male', 'Xai-Xai', 'Hoa', 'Buddhism', 'csturrord@squidoo.com', '13339 Paget Road', '5', '9');
INSERT INTO student (id, first_name, last_name, birth_date, gender, home_town, ethnic, religion, email, address, class_id, parent_id) VALUES ('15', 'Ardelia', 'Clevely', '30/04/2004', 'Female', 'Carson City', 'Hoa', 'None', 'aclevelye@discovery.com', '4956 Annamark Street', '3', '10');
INSERT INTO student (id, first_name, last_name, birth_date, gender, home_town, ethnic, religion, email, address, class_id, parent_id) VALUES ('16', 'Mac', 'Boast', '30/03/2003', 'Male', 'Ipuh', 'Kinh', 'Catholicism', 'mboastf@dropbox.com', '71366 Pleasure Trail', '12', '10');
INSERT INTO student (id, first_name, last_name, birth_date, gender, home_town, ethnic, religion, email, address, class_id, parent_id) VALUES ('17', 'Alric', 'Oertzen', '19/03/2002', 'Male', 'Mazamet', 'Kinh', 'Buddhism', 'aoertzeng@sina.com.cn', '6 Acker Drive', '11', '11');
INSERT INTO student (id, first_name, last_name, birth_date, gender, home_town, ethnic, religion, email, address, class_id, parent_id) VALUES ('18', 'Tynan', 'Camock', '11/6/2020', 'Non-binary', 'Kalugmanan', 'Kinh', 'Protestantism', 'tcamockh@squidoo.com', '417 Del Mar Street', '18', '12');
INSERT INTO student (id, first_name, last_name, birth_date, gender, home_town, ethnic, religion, email, address, class_id, parent_id) VALUES ('19', 'Darryl', 'Rosberg', '15/05/2022', 'Male', 'Cimongkor', 'Kinh', 'None', 'drosbergi@ucoz.ru', '5676 Pankratz Street', '19', '13');
INSERT INTO student (id, first_name, last_name, birth_date, gender, home_town, ethnic, religion, email, address, class_id, parent_id) VALUES ('20', 'Arabella', 'Leuchars', '18/09/2004', 'Female', 'Rungis', 'Hoa', 'Protestantism', 'aleucharsj@auda.org.au', '7663 Clove Street', '6', '14');
INSERT INTO student (id, first_name, last_name, birth_date, gender, home_town, ethnic, religion, email, address, class_id, parent_id) VALUES ('21', 'Ruperto', 'Dady', '5/9/2010', 'Male', 'Coulommiers', 'Kinh', 'None', 'rdadyk@nasa.gov', '7155 Debs Crossing', '9', '15');
INSERT INTO student (id, first_name, last_name, birth_date, gender, home_town, ethnic, religion, email, address, class_id, parent_id) VALUES ('22', 'Alf', 'Biesterfeld', '5/3/2003', 'Male', 'Ntoroko', 'Kinh', 'Protestantism', 'abiesterfeldl@ihg.com', '348 Petterle Point', '15', '16');
INSERT INTO student (id, first_name, last_name, birth_date, gender, home_town, ethnic, religion, email, address, class_id, parent_id) VALUES ('23', 'Lori', 'Washington', '26/03/2009', 'Female', 'Netolice', 'Hoa', 'None', 'lwashingtonm@google.es', '4 Darwin Plaza', '5', '17');
INSERT INTO student (id, first_name, last_name, birth_date, gender, home_town, ethnic, religion, email, address, class_id, parent_id) VALUES ('24', 'Danya', 'Chasmar', '5/10/2018', 'Female', 'Zhaigang', 'Hoa', 'Protestantism', 'dchasmarn@google.es', '7325 Luster Point', '2', '18');
INSERT INTO student (id, first_name, last_name, birth_date, gender, home_town, ethnic, religion, email, address, class_id, parent_id) VALUES ('25', 'Kevon', 'Ainsley', '1/12/2008', 'Bigender', 'Damatou', 'Hoa', 'None', 'kainsleyo@gov.uk', '967 Riverside Point', '3', '18');
INSERT INTO student (id, first_name, last_name, birth_date, gender, home_town, ethnic, religion, email, address, class_id, parent_id) VALUES ('26', 'Mallissa', 'Dyka', '21/11/2020', 'Genderfluid', 'Askaniya Nova', 'Hoa', 'Protestantism', 'mdykap@hatena.ne.jp', '01452 Chinook Trail', '1', '19');
INSERT INTO student (id, first_name, last_name, birth_date, gender, home_town, ethnic, religion, email, address, class_id, parent_id) VALUES ('27', 'Jared', 'Bartod', '6/6/2015', 'Male', 'Quvasoy', 'Kinh', 'None', 'jbartodq@google.nl', '94 Hudson Lane', '6', '20');
INSERT INTO student (id, first_name, last_name, birth_date, gender, home_town, ethnic, religion, email, address, class_id, parent_id) VALUES ('28', 'Tracy', 'Pedden', '8/10/2010', 'Male', 'Thung Song', 'Hoa', 'None', 'tpeddenr@ebay.com', '1 Mcguire Circle', '17', '21');
INSERT INTO student (id, first_name, last_name, birth_date, gender, home_town, ethnic, religion, email, address, class_id, parent_id) VALUES ('29', 'Moyna', 'Dorre', '31/07/2005', 'Female', 'Onomichi', 'Kinh', 'None', 'mdorres@mozilla.com', '1455 David Place', '4', '22');
INSERT INTO student (id, first_name, last_name, birth_date, gender, home_town, ethnic, religion, email, address, class_id, parent_id) VALUES ('60', 'Birdie', 'Juggings', '21/07/2020', 'Female', 'Faryab', 'Hoa', 'Protestantism', 'bjuggings1n@gmpg.org', '5252 Coolidge Plaza', '19', '22');
INSERT INTO student (id, first_name, last_name, birth_date, gender, home_town, ethnic, religion, email, address, class_id, parent_id) VALUES ('30', 'Annice', 'Whitehall', '28/01/2010', 'Female', '????????', 'Kinh', 'None', 'awhitehallt@tuttocitta.it', '6 Wayridge Street', '12', '23');
INSERT INTO student (id, first_name, last_name, birth_date, gender, home_town, ethnic, religion, email, address, class_id, parent_id) VALUES ('31', 'Rachel', 'Blune', '28/03/2020', 'Female', 'Kafr Sawm', 'Kinh', 'Protestantism', 'rbluneu@rediff.com', '283 Fairview Terrace', '10', '24');
INSERT INTO student (id, first_name, last_name, birth_date, gender, home_town, ethnic, religion, email, address, class_id, parent_id) VALUES ('32', 'Aarika', 'Beningfield', '3/2/2008', 'Female', 'Chumpi', 'Hoa', 'None', 'abeningfieldv@cisco.com', '2 Utah Road', '17', '25');
INSERT INTO student (id, first_name, last_name, birth_date, gender, home_town, ethnic, religion, email, address, class_id, parent_id) VALUES ('33', 'Sid', 'Hartshorn', '26/07/2004', 'Male', 'Shuihu', 'Kinh', 'None', 'shartshornw@etsy.com', '95025 Fordem Center', '13', '26');
INSERT INTO student (id, first_name, last_name, birth_date, gender, home_town, ethnic, religion, email, address, class_id, parent_id) VALUES ('34', 'Orsola', 'Szymaniak', '24/11/2023', 'Female', 'Sexmoan', 'Kinh', 'Protestantism', 'oszymaniakx@4shared.com', '5582 Mariners Cove Pass', '5', '27');
INSERT INTO student (id, first_name, last_name, birth_date, gender, home_town, ethnic, religion, email, address, class_id, parent_id) VALUES ('35', 'Barty', 'Cuffley', '7/6/2005', 'Male', 'Hamm', 'Kinh', 'Protestantism', 'bcuffleyy@domainmarket.com', '3251 Sundown Center', '4', '27');
INSERT INTO student (id, first_name, last_name, birth_date, gender, home_town, ethnic, religion, email, address, class_id, parent_id) VALUES ('36', 'Annette', 'Pyke', '15/01/2004', 'Female', 'Julio de Castilhos', 'Kinh', 'None', 'apykez@ezinearticles.com', '9 Clemons Way', '13', '28');
INSERT INTO student (id, first_name, last_name, birth_date, gender, home_town, ethnic, religion, email, address, class_id, parent_id) VALUES ('37', 'Rand', 'Markwick', '9/9/2016', 'Male', 'Chaanpu', 'Hoa', 'Buddhism', 'rmarkwick10@istockphoto.com', '7439 Coleman Hill', '13', '28');
INSERT INTO student (id, first_name, last_name, birth_date, gender, home_town, ethnic, religion, email, address, class_id, parent_id) VALUES ('38', 'Burnard', 'Pegden', '27/11/2005', 'Male', 'Quezalguaque', 'Kinh', 'None', 'bpegden11@hc360.com', '0 Thompson Alley', '14', '29');
INSERT INTO student (id, first_name, last_name, birth_date, gender, home_town, ethnic, religion, email, address, class_id, parent_id) VALUES ('39', 'Tomkin', 'Gait', '21/09/2005', 'Male', 'Nong Bua', 'Kinh', 'Protestantism', 'tgait12@globo.com', '0922 Petterle Plaza', '20', '30');
INSERT INTO student (id, first_name, last_name, birth_date, gender, home_town, ethnic, religion, email, address, class_id, parent_id) VALUES ('40', 'Orelle', 'Bonifas', '27/11/2020', 'Female', 'Gunungbatu', 'Hoa', 'None', 'obonifas13@ask.com', '57889 Everett Junction', '2', '30');
INSERT INTO student (id, first_name, last_name, birth_date, gender, home_town, ethnic, religion, email, address, class_id, parent_id) VALUES ('41', 'Flinn', 'Broadhurst', '16/08/2009', 'Male', 'Kalino', 'Kinh', 'Catholicism', 'fbroadhurst14@wikipedia.org', '17664 Shasta Hill', '8', '31');
INSERT INTO student (id, first_name, last_name, birth_date, gender, home_town, ethnic, religion, email, address, class_id, parent_id) VALUES ('42', 'Julita', 'Soal', '28/02/2006', 'Female', 'Tumbagaan', 'Kinh', 'None', 'jsoal15@google.com.au', '642 Ilene Way', '7', '32');
INSERT INTO student (id, first_name, last_name, birth_date, gender, home_town, ethnic, religion, email, address, class_id, parent_id) VALUES ('59', 'Vinni', 'Quayle', '2/3/2000', 'Female', 'Libu', 'Hoa', 'None', 'vquayle1m@guardian.co.uk', '902 Birchwood Parkway', '14', '32');
INSERT INTO student (id, first_name, last_name, birth_date, gender, home_town, ethnic, religion, email, address, class_id, parent_id) VALUES ('43', 'Uri', 'Hamlyn', '18/08/2008', 'Male', 'Buta Ranquil', 'Hoa', 'Buddhism', 'uhamlyn16@123-reg.co.uk', '544 Prentice Parkway', '10', '33');
INSERT INTO student (id, first_name, last_name, birth_date, gender, home_town, ethnic, religion, email, address, class_id, parent_id) VALUES ('58', 'Dorie', 'Boon', '12/6/2003', 'Male', 'S�o Martinho', 'Kinh', 'Christianity', 'dboon1l@nih.gov', '6 Annamark Lane', '9', '33');
INSERT INTO student (id, first_name, last_name, birth_date, gender, home_town, ethnic, religion, email, address, class_id, parent_id) VALUES ('44', 'Barbette', 'Torrijos', '15/11/2018', 'Female', 'Hengshan', 'Hoa', 'None', 'btorrijos17@deviantart.com', '02061 Manley Park', '9', '34');
INSERT INTO student (id, first_name, last_name, birth_date, gender, home_town, ethnic, religion, email, address, class_id, parent_id) VALUES ('57', 'Haskell', 'Kimbling', '22/11/2000', 'Male', 'Baoziba', 'Kinh', 'Christianity', 'hkimbling1k@smugmug.com', '98254 Jenifer Court', '19', '34');
INSERT INTO student (id, first_name, last_name, birth_date, gender, home_town, ethnic, religion, email, address, class_id, parent_id) VALUES ('45', 'Leola', 'Eckersall', '14/04/2021', 'Female', 'Ivoti', 'Hoa', 'None', 'leckersall18@bizjournals.com', '7377 Talmadge Circle', '17', '35');
INSERT INTO student (id, first_name, last_name, birth_date, gender, home_town, ethnic, religion, email, address, class_id, parent_id) VALUES ('56', 'Noelle', 'Francom', '22/12/2019', 'Female', 'Mont-Laurier', 'Hoa', 'None', 'nfrancom1j@surveymonkey.com', '18 Bellgrove Circle', '8', '35');
INSERT INTO student (id, first_name, last_name, birth_date, gender, home_town, ethnic, religion, email, address, class_id, parent_id) VALUES ('46', 'Ashby', 'Long', '9/3/2022', 'Male', 'Metsemotlhaba', 'Hoa', 'Catholicism', 'along19@dagondesign.com', '46 Truax Lane', '15', '36');
INSERT INTO student (id, first_name, last_name, birth_date, gender, home_town, ethnic, religion, email, address, class_id, parent_id) VALUES ('55', 'Melody', 'Denerley', '21/04/2003', 'Female', 'Trondheim', 'Hoa', 'Protestantism', 'mdenerley1i@newyorker.com', '1 Mosinee Court', '20', '36');
INSERT INTO student (id, first_name, last_name, birth_date, gender, home_town, ethnic, religion, email, address, class_id, parent_id) VALUES ('47', 'Natividad', 'Gillis', '12/1/2012', 'Female', 'Naebugis', 'Kinh', 'Protestantism', 'ngillis1a@mlb.com', '8523 Katie Plaza', '7', '37');
INSERT INTO student (id, first_name, last_name, birth_date, gender, home_town, ethnic, religion, email, address, class_id, parent_id) VALUES ('54', 'Michal', 'Rubra', '5/3/2001', 'Male', 'Pedra Furada', 'Hoa', 'None', 'mrubra1h@purevolume.com', '98 Sutherland Center', '7', '37');
INSERT INTO student (id, first_name, last_name, birth_date, gender, home_town, ethnic, religion, email, address, class_id, parent_id) VALUES ('48', 'Leon', 'Bateup', '29/02/2004', 'Male', 'Camajuan', 'Hoa', 'None', 'lbateup1b@diigo.com', '339 Badeau Hill', '6', '38');
INSERT INTO student (id, first_name, last_name, birth_date, gender, home_town, ethnic, religion, email, address, class_id, parent_id) VALUES ('53', 'Odelinda', 'Faulo', '10/5/2004', 'Female', 'Aral', 'Kinh', 'Catholicism', 'ofaulo1g@businesswire.com', '090 Huxley Avenue', '1', '38');
INSERT INTO student (id, first_name, last_name, birth_date, gender, home_town, ethnic, religion, email, address, class_id, parent_id) VALUES ('49', 'Hillary', 'Hansberry', '23/05/2014', 'Female', 'Neglasari', 'Hoa', 'Catholicism', 'hhansberry1c@youtube.com', '6 Lukken Center', '4', '39');
INSERT INTO student (id, first_name, last_name, birth_date, gender, home_town, ethnic, religion, email, address, class_id, parent_id) VALUES ('50', 'Tome', 'Stratford', '14/02/2007', 'Male', 'Mungo', 'Kinh', 'Protestantism', 'tstratford1d@ed.gov', '8 Oxford Crossing', '2', '39');
INSERT INTO student (id, first_name, last_name, birth_date, gender, home_town, ethnic, religion, email, address, class_id, parent_id) VALUES ('51', 'Jessie', 'Kleinhausen', '19/12/2019', 'Male', 'Shigu', 'Kinh', 'Catholicism', 'jkleinhausen1e@ca.gov', '0623 Towne Pass', '11', '40');
INSERT INTO student (id, first_name, last_name, birth_date, gender, home_town, ethnic, religion, email, address, class_id, parent_id) VALUES ('52', 'Kynthia', 'Rope', '4/6/2017', 'Female', 'Tupsan', 'Hoa', 'Protestantism', 'krope1f@psu.edu', '5631 Bayside Trail', '12', '40');

CREATE TABLE course 
(
    id	INT,
    subject_id	INT,
    teacher_id	INT
);

INSERT INTO course (id, subject_id, teacher_id) VALUES ('1', '4', '9');
INSERT INTO course (id, subject_id, teacher_id) VALUES ('2', '10', '10');
INSERT INTO course (id, subject_id, teacher_id) VALUES ('3', '13', '2');
INSERT INTO course (id, subject_id, teacher_id) VALUES ('4', '11', '12');
INSERT INTO course (id, subject_id, teacher_id) VALUES ('5', '18', '14');
INSERT INTO course (id, subject_id, teacher_id) VALUES ('6', '16', '11');
INSERT INTO course (id, subject_id, teacher_id) VALUES ('7', '13', '7');
INSERT INTO course (id, subject_id, teacher_id) VALUES ('8', '15', '1');
INSERT INTO course (id, subject_id, teacher_id) VALUES ('9', '2', '10');
INSERT INTO course (id, subject_id, teacher_id) VALUES ('10', '6', '20');
INSERT INTO course (id, subject_id, teacher_id) VALUES ('11', '4', '14');
INSERT INTO course (id, subject_id, teacher_id) VALUES ('12', '17', '4');
INSERT INTO course (id, subject_id, teacher_id) VALUES ('13', '11', '17');
INSERT INTO course (id, subject_id, teacher_id) VALUES ('14', '13', '18');
INSERT INTO course (id, subject_id, teacher_id) VALUES ('15', '17', '15');
INSERT INTO course (id, subject_id, teacher_id) VALUES ('16', '1', '3');
INSERT INTO course (id, subject_id, teacher_id) VALUES ('17', '18', '4');
INSERT INTO course (id, subject_id, teacher_id) VALUES ('18', '2', '6');
INSERT INTO course (id, subject_id, teacher_id) VALUES ('19', '15', '6');
INSERT INTO course (id, subject_id, teacher_id) VALUES ('20', '8', '13');
INSERT INTO course (id, subject_id, teacher_id) VALUES ('21', '6', '15');
INSERT INTO course (id, subject_id, teacher_id) VALUES ('22', '2', '1');
INSERT INTO course (id, subject_id, teacher_id) VALUES ('23', '3', '10');
INSERT INTO course (id, subject_id, teacher_id) VALUES ('24', '14', '8');
INSERT INTO course (id, subject_id, teacher_id) VALUES ('25', '13', '11');
INSERT INTO course (id, subject_id, teacher_id) VALUES ('26', '17', '16');
INSERT INTO course (id, subject_id, teacher_id) VALUES ('27', '16', '5');
INSERT INTO course (id, subject_id, teacher_id) VALUES ('28', '11', '8');
INSERT INTO course (id, subject_id, teacher_id) VALUES ('29', '6', '14');
INSERT INTO course (id, subject_id, teacher_id) VALUES ('30', '3', '6');
INSERT INTO course (id, subject_id, teacher_id) VALUES ('31', '11', '7');
INSERT INTO course (id, subject_id, teacher_id) VALUES ('32', '9', '13');
INSERT INTO course (id, subject_id, teacher_id) VALUES ('33', '1', '13');
INSERT INTO course (id, subject_id, teacher_id) VALUES ('34', '11', '18');
INSERT INTO course (id, subject_id, teacher_id) VALUES ('35', '9', '2');
INSERT INTO course (id, subject_id, teacher_id) VALUES ('36', '5', '20');
INSERT INTO course (id, subject_id, teacher_id) VALUES ('37', '5', '19');
INSERT INTO course (id, subject_id, teacher_id) VALUES ('38', '6', '4');
INSERT INTO course (id, subject_id, teacher_id) VALUES ('39', '18', '12');
INSERT INTO course (id, subject_id, teacher_id) VALUES ('40', '7', '17');
INSERT INTO course (id, subject_id, teacher_id) VALUES ('41', '16', '4');
INSERT INTO course (id, subject_id, teacher_id) VALUES ('42', '1', '11');
INSERT INTO course (id, subject_id, teacher_id) VALUES ('43', '4', '9');
INSERT INTO course (id, subject_id, teacher_id) VALUES ('44', '12', '2');
INSERT INTO course (id, subject_id, teacher_id) VALUES ('45', '17', '5');
INSERT INTO course (id, subject_id, teacher_id) VALUES ('46', '14', '1');
INSERT INTO course (id, subject_id, teacher_id) VALUES ('47', '6', '19');
INSERT INTO course (id, subject_id, teacher_id) VALUES ('48', '9', '12');
INSERT INTO course (id, subject_id, teacher_id) VALUES ('49', '15', '3');
INSERT INTO course (id, subject_id, teacher_id) VALUES ('50', '13', '6');

CREATE TABLE course_score 
(
    course_id	INT,
    student_id	INT,
    midterm	    REAL,
    final	REAL,
    score	    REAL
);

INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('1', '4', '2.46', '4.93', '4.19');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('1', '22', '7.1', '1.77', '3.37');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('1', '39', '7.02', '4.18', '5.03');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('1', '60', '0.61', '5.4', '3.96');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('2', '23', '0.77', '3.7', '2.82');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('2', '26', '0.34', '6.28', '4.5');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('2', '35', '3.57', '5.43', '4.87');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('2', '58', '8.14', '5.89', '6.56');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('3', '2', '2.81', '5.93', '4.99');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('3', '7', '1.46', '3.84', '3.13');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('3', '41', '6.71', '0.51', '2.37');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('3', '46', '1.63', '3.56', '2.98');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('4', '2', '4.14', '0.38', '1.51');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('4', '8', '3.51', '4.95', '4.52');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('4', '36', '0.34', '0.33', '0.33');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('4', '42', '3.61', '8.31', '6.9');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('5', '5', '2.31', '8.98', '6.98');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('5', '18', '6.22', '8.48', '7.8');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('5', '35', '2.99', '4.84', '4.28');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('5', '45', '6.7', '6.88', '6.83');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('6', '2', '9.29', '6.06', '7.03');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('6', '19', '0.7', '9.13', '6.6');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('6', '37', '5.15', '3.68', '4.12');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('6', '45', '4.92', '7.65', '6.83');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('7', '17', '5.23', '4.37', '4.63');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('7', '24', '4.01', '6.36', '5.66');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('7', '42', '9.14', '8.32', '8.57');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('7', '51', '1.2', '3.59', '2.87');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('8', '11', '8.35', '0.21', '2.65');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('8', '16', '7.56', '8.33', '8.1');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('8', '47', '4.52', '2.92', '3.4');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('8', '55', '8.85', '4.09', '5.52');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('9', '16', '1.74', '9.24', '6.99');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('9', '23', '4.16', '3.68', '3.82');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('9', '45', '0.68', '5.87', '4.31');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('9', '47', '9.17', '5.58', '6.66');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('10', '25', '6.4', '5.99', '6.11');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('10', '40', '1.92', '8.23', '6.34');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('10', '43', '6.97', '9.11', '8.47');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('10', '48', '3.27', '7.51', '6.24');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('11', '42', '8.96', '6.58', '7.29');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('11', '48', '6.92', '3.79', '4.73');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('11', '50', '8.92', '9.32', '9.2');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('11', '59', '0.2', '0.98', '0.75');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('12', '6', '0.28', '3.61', '2.61');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('12', '23', '4.14', '8.51', '7.2');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('12', '36', '9.92', '1.86', '4.28');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('12', '53', '1.75', '0.22', '0.68');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('13', '35', '4.64', '5.03', '4.91');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('13', '36', '9.22', '1.84', '4.05');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('13', '52', '3.51', '8.73', '7.16');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('13', '58', '2.59', '7', '5.68');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('14', '2', '2.84', '4.16', '3.76');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('14', '10', '4.32', '2.78', '3.24');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('14', '38', '7.53', '5.34', '6');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('14', '60', '0.55', '0.81', '0.73');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('15', '4', '9.11', '3.31', '5.05');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('15', '19', '5.49', '8.97', '7.93');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('15', '38', '7.99', '4.93', '5.85');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('15', '51', '9.1', '0.31', '2.95');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('16', '21', '6.24', '4.75', '5.2');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('16', '34', '6.47', '4.73', '5.25');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('16', '41', '2.89', '4.4', '3.95');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('16', '45', '3.29', '4.76', '4.32');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('17', '43', '4.75', '4.12', '4.31');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('17', '47', '10', '2.47', '4.73');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('17', '48', '1.06', '0.25', '0.49');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('17', '49', '5.93', '3.29', '4.08');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('18', '6', '1.81', '8.63', '6.58');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('18', '17', '8.41', '3.3', '4.83');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('18', '53', '6.07', '7.14', '6.82');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('18', '55', '0.71', '5.74', '4.23');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('19', '5', '2.24', '7.61', '6');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('19', '11', '1.1', '9.23', '6.79');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('19', '46', '3.11', '0.11', '1.01');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('19', '56', '6.06', '0.71', '2.32');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('20', '20', '6.48', '8.74', '8.06');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('20', '22', '8.28', '0.87', '3.09');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('20', '28', '7.68', '5.64', '6.25');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('20', '31', '6.4', '0.31', '2.14');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('21', '13', '1.88', '7.59', '5.88');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('21', '31', '6.14', '8.58', '7.85');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('21', '39', '9.56', '5.74', '6.89');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('21', '54', '4.15', '8.2', '6.98');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('22', '3', '0.67', '6.01', '4.41');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('22', '25', '6.15', '0.51', '2.2');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('22', '45', '3.59', '0.98', '1.76');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('22', '60', '0.66', '3.29', '2.5');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('23', '14', '6.99', '3.54', '4.58');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('23', '36', '0.17', '6.98', '4.94');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('23', '40', '9.64', '1.22', '3.75');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('23', '58', '4.46', '8.83', '7.52');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('24', '8', '1.28', '0.25', '0.56');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('24', '11', '9.39', '3.37', '5.18');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('24', '42', '3.05', '4.56', '4.11');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('24', '60', '9.76', '8.27', '8.72');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('25', '2', '6.22', '7.87', '7.38');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('25', '35', '5.03', '6.07', '5.76');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('25', '38', '9', '9.87', '9.61');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('25', '44', '2.14', '9.93', '7.59');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('26', '7', '3.84', '4.19', '4.08');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('26', '44', '6.04', '0.6', '2.23');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('26', '55', '4.62', '1.31', '2.3');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('26', '58', '3.1', '6.53', '5.5');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('27', '8', '2.13', '1', '1.34');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('27', '32', '2.25', '5.35', '4.42');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('27', '49', '4.64', '3.22', '3.65');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('27', '52', '4.79', '6.35', '5.88');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('28', '1', '0.13', '6.46', '4.56');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('28', '9', '1.72', '7.19', '5.55');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('28', '13', '8.63', '2.72', '4.49');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('28', '36', '4.86', '3.4', '3.84');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('29', '6', '0.59', '1.86', '1.48');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('29', '10', '4.13', '8.38', '7.1');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('29', '18', '4.23', '0.18', '1.4');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('29', '28', '2.95', '4.2', '3.82');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('30', '7', '9.17', '1.78', '4');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('30', '15', '9.99', '1.67', '4.17');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('30', '24', '3.09', '4.16', '3.84');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('30', '43', '0.8', '6.44', '4.75');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('31', '18', '5.45', '9.5', '8.28');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('31', '19', '4.06', '8.39', '7.09');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('31', '23', '1.66', '1.39', '1.47');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('31', '46', '0.26', '7.58', '5.38');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('32', '2', '0.73', '2.41', '1.91');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('32', '5', '6.92', '1.28', '2.97');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('32', '23', '5.18', '3.66', '4.12');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('32', '49', '9.88', '7', '7.86');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('33', '7', '8.99', '5.97', '6.88');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('33', '12', '8.67', '6.72', '7.3');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('33', '13', '3.37', '8.75', '7.14');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('33', '34', '3.36', '4.94', '4.47');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('34', '6', '2.84', '5.89', '4.98');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('34', '45', '5.66', '4.75', '5.02');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('34', '53', '9.58', '4.01', '5.68');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('34', '54', '1.97', '6.45', '5.11');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('35', '1', '4.46', '6.17', '5.66');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('35', '15', '4.56', '2.9', '3.4');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('35', '25', '0.43', '9.33', '6.66');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('35', '34', '0.18', '0.8', '0.61');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('36', '36', '5.45', '1.35', '2.58');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('36', '46', '6.26', '3.31', '4.2');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('36', '53', '9.4', '1.38', '3.79');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('36', '55', '4.69', '2.59', '3.22');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('37', '7', '5.25', '9.87', '8.48');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('37', '8', '9.34', '1.38', '3.77');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('37', '20', '2.49', '1.86', '2.05');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('37', '25', '5.51', '9.65', '8.41');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('38', '40', '8.37', '4.07', '5.36');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('38', '41', '6.37', '3.91', '4.65');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('38', '44', '6.5', '1.26', '2.83');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('38', '47', '6.31', '1.69', '3.08');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('39', '23', '7.18', '2.4', '3.83');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('39', '48', '2.73', '6.4', '5.3');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('39', '49', '1.16', '6.1', '4.62');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('39', '54', '5.04', '8.76', '7.64');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('40', '8', '0.8', '1.66', '1.4');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('40', '20', '3.67', '4.55', '4.29');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('40', '43', '0.99', '6.9', '5.13');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('40', '57', '1.02', '5.62', '4.24');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('41', '9', '3.1', '0.77', '1.47');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('41', '19', '0.28', '0.61', '0.51');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('41', '21', '1.93', '1.19', '1.41');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('41', '52', '4.73', '3.58', '3.92');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('42', '1', '1.65', '5.03', '4.02');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('42', '3', '2.53', '2.08', '2.22');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('42', '4', '2.35', '2.68', '2.58');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('42', '50', '1.21', '8.49', '6.31');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('43', '17', '3.4', '3.89', '3.74');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('43', '33', '2.3', '3.25', '2.96');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('43', '40', '0.66', '8.49', '6.14');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('43', '50', '2.01', '5.31', '4.32');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('44', '35', '6.27', '6.99', '6.77');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('44', '46', '8.07', '4.48', '5.56');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('44', '55', '5.2', '2.81', '3.53');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('44', '57', '2.78', '3.24', '3.1');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('45', '25', '0.01', '1.76', '1.24');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('45', '29', '5.86', '0.52', '2.12');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('45', '32', '1.68', '8.65', '6.56');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('45', '48', '1.07', '2.91', '2.36');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('46', '13', '0.56', '0.24', '0.34');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('46', '18', '5.8', '6.78', '6.49');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('46', '30', '8.97', '0.37', '2.95');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('46', '56', '6.54', '2.31', '3.58');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('47', '6', '1.35', '9.42', '7');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('47', '16', '7.33', '6.98', '7.08');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('47', '51', '5.9', '7.85', '7.26');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('47', '58', '2.64', '2.2', '2.33');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('48', '17', '8.13', '3.88', '5.16');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('48', '41', '1.8', '8.98', '6.83');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('48', '43', '2.1', '9.81', '7.5');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('48', '53', '1.77', '1.29', '1.43');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('49', '8', '2.44', '7.96', '6.3');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('49', '21', '3.48', '9.59', '7.76');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('49', '22', '3.09', '3.64', '3.48');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('49', '34', '0.67', '0.39', '0.47');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('50', '7', '3.21', '4.19', '3.9');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('50', '23', '7.86', '7.23', '7.42');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('50', '24', '1.16', '1.41', '1.34');
INSERT INTO course_score (course_id, student_id, midterm, final, score) VALUES ('50', '44', '5.63', '9.93', '8.64');
