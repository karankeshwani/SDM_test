create table Admin(
admin_id int primary key,
admin_name varchar(20),
org_name varchar(20)
);

create table HR
hr_login int primary key,
hr_name VARCHAR,
dept_no int,
admin_id int
foreign key f1(admin_id) references admin(admin_id)
);

create table Project(
project_id int primary key,
pro_name VARCHAR,
employer_id int
foreign key f2(employer_id) REFERENCES Employer_id(employer_id)
);

create table Employer(
employer id int primary key,
employer_name varchar(20),
employer_contact int,
admin_id int ,
project_id int,
foreign key f3(admin_id) references admin(admin_id)
foreign key f4(project_id) references project(project_id)
);

create table JobSeeker(
J_id int primary key,
J_name,j_skill VARCHAR,
project_id int,
status varchar(20),
join_date date,
foreign key f4(project_id) references project(project_id)
);