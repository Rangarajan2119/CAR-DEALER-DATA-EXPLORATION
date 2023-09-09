use b;
--	table creation
create table Course_info (Course_id int, Course_name
varchar(20), primary key (Course_Id));

insert into Course_info values

(1,	'CMA'),
(2,	'CA'),
(3,	'CS');
select * from course_info;

create table Student_det (Student_id int, Student_name
varchar(20),City_state varchar(20), Age int,
Roll_no int, Community varchar(20), Course_id int,
Primary key(Student_id), constraint Dep_foreign_key
foreign key(Course_id)
references Course_info(Course_id));

insert into Student_det values
(1,	'Vasanth',	'Erode',	21,	13001,	'BC',	1),
(2,	'Guru',	'Tiruppur',	20,	13002,	'MBC',	1),
(3,	'Gokul',	'Tiruchirapalli',	18,	13003,	'SC',	1),
(4,	'Mani',	'Kumarapalayam',	24,	13004,	'BC',	1),
(5,	'Moorthy',	'Salem',	18,	13005,	'MBC',	2),
(6,	'Amutha',	'Chennai',	17,	13006,	'SC',	2),
(7,	'Jaga',	'Madurai',	24,	13007,	'BC',	2),
(8,	'Pavithra',	'Erode',	23,	13008,	'MBC',	2),
(9,	'Arthi',	'Tiruppur',	17,	13009,	'SC',	3),
(10,	'Kabilan',	'Tiruchirapalli',	24,	13010,	'BC',	3),
(11,	'Manasi',	'Kumarapalayam',	17,	13011,	'MBC',	3),
(12,	'Suja',	'Salem',	23,	13012,	'SC',	3),
(13,	'Arun',	'Chennai',	22,	13013,	'BC',	3),
(14,	'Deepa',	'Madurai',	20,	13014,	'MBC',	1),
(15,	'Sindhu',	'Erode',	22,	13015,	'SC',	1),
(16,	'Madhavi',	'Tiruppur',	20,	13016,	'BC',	1),
(17,	'Swetha',	'Tiruchirapalli',	17,	13017,	'MBC',	1),
(18,	'Selvi',	'Kumarapalayam',	22,	13018,	'SC',	3),
(19,	'Pooja',	'Salem',	19,	13019,	'BC',	1),
(20,	'Lakshmi',	'Chennai',	17,	13020,	'MBC',	2),
(21,	'Veeramani',	'Madurai',	21,	13021,	'SC',	1),
(22,	'Pandian',	'Erode',	21,	13022,	'BC',	1),
(23,	'Veera',	'Tiruppur',	20,	13023,	'MBC',	2),
(24,	'Devi',	'Tiruchirapalli',	20,	13024,	'SC',	3),
(25,	'Devan',	'Kumarapalayam',	21,	13025,	'BC',	1),
(26,	'Keerthi',	'Salem',	17,	13026,	'MBC',	2),
(27,	'Venkatesh',	'Chennai',	24,	13027,	'SC',	1),
(28,	'Raja',	'Madurai',	24,	13028,	'SC',	3);
select * from student_det;

create table Marks_info(marks_id int primary key, Student_id int,
Finance int, Cost int, Corporate int, constraint id foreign key (student_id) references student_det(student_id));

insert into marks_info values
(14001,	1,	75,	76,	65),
(14002,	2,	92,	90,	19),
(14003,	3,	38,	37,	46),
(14004,	4,	39,	90,	58),
(14005,	5,	34,	89,	20),
(14006,	6,	44,	38,	60),
(14007,	7,	50,	26,	98),
(14008,	8,	59,	78,	82),
(14009,	9,	89,	47,	88),
(14010,	10,	20,	25,	100),
(14011,	11,	74,	50,	100),
(14012,	12,	81,	62,	31),
(14013,	13,	60,	19,	33),
(14014,	14,	77,	22,	23),
(14015,	15,	68,	38,	35),
(14016,	16,	31,	60,	83),
(14017,	17,	83,	53,	79),
(14018,	18,	37,	79,	88),
(14019,	19,	55,	76,	76),
(14020,	20,	25,	40,	81),
(14021,	21,	38,	87,	48),
(14022,	22,	84,	63,	72),
(14023,	23,	80,	44,	64),
(14024,	24,	53,	46,	59),
(14025,	25,	79,	48,	94),
(14026,	26,	48,	66,	70),
(14027,	27,	61,	45,	74),
(14028,	28,	24,	95,	58);

select * from marks_info;
alter table student_det rename to stu_info;

select stu_info.student_id,stu_info.student_name,stu_info.city_state,stu_info.roll_no,
course_info.course_id,course_info.course_name,
marks_info.marks_id,marks_info.finance,marks_info.cost from 
Stu_info inner join course_info on
Stu_info.Course_id = Course_info.course_id
inner join Marks_info on Stu_info. Student_id
= Marks_info.Student_id order by student_id;


select * from stu_info;
show tables;

select * from stu_info inner join course_info on
Stu_info.Course_id = Course_info.course_id
inner join Marks_info on Stu_info. Student_id
= Marks_info.Student_id order by roll_no;

select stu_info.student_id,stu_info.student_name,stu_info.city_state,stu_info.roll_no,
course_info.course_id,course_info.course_name,
marks_info.marks_id,marks_info.finance,marks_info.cost from 
Stu_info inner join course_info on
Stu_info.Course_id = Course_info.course_id
inner join Marks_info on Stu_info. Student_id
= Marks_info.Student_id where char_length(student_name) = '5' order by roll_no;

select stu_info.student_id,stu_info.student_name,stu_info.city_state,stu_info.roll_no,
course_info.course_id,course_info.course_name,
marks_info.marks_id,marks_info.finance,marks_info.cost from 
Stu_info inner join course_info on
Stu_info.Course_id = Course_info.course_id
inner join Marks_info on Stu_info. Student_id
= Marks_info.Student_id where sum(finance and cost) >= 100;

select stu_info.student_id,stu_info.student_name,stu_info.city_state,stu_info.roll_no,
course_info.course_id,course_info.course_name,
marks_info.marks_id,marks_info.finance,marks_info.cost from 
Stu_info inner join course_info on
Stu_info.Course_id = Course_info.course_id
inner join Marks_info on Stu_info. Student_id = Marks_info.Student_id 
where student_name  like 'v%';


select stu_info.student_id,stu_info.student_name,stu_info.city_state,stu_info.roll_no,
course_info.course_id,course_info.course_name,
marks_info.marks_id,marks_info.finance,marks_info.cost from 
Stu_info inner join course_info on
Stu_info.Course_id = Course_info.course_id
inner join Marks_info on Stu_info. Student_id = Marks_info.Student_id 
where finance >= 55;

select stu_info.student_id,stu_info.student_name,stu_info.city_state,stu_info.roll_no,
course_info.course_id,course_info.course_name,
marks_info.marks_id,marks_info.finance,marks_info.cost from 
Stu_info inner join course_info on
Stu_info.Course_id = Course_info.course_id
inner join Marks_info on Stu_info. Student_id = Marks_info.Student_id 
where (finance+cost/2) >= 50 order by roll_no;

select countif((finance = '61','1',null)) as total from marks_info 
inner join Marks_info on Stu_info. Student_id = Marks_info.Student_id ;
 
 
 