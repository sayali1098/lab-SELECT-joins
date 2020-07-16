insert into role(id,name)values(1,'designer');
insert into role(id,name)values(2,'guide');
insert into role(id,name)values(3,'cricketer');
insert into role(id,name)values(4,'model');
insert into role(id,name)values(5,'artist');
insert into role(id,name)values(6,'dancer');
select * from role;

insert into skill(id,description,name)values(1,'self learning','learn');
insert into skill(id,description,name)values(2,'technical skills','coding');
insert into skill(id,description,name)values(3,'management skills','leadership');
insert into skill(id,description,name)values(4,'observation skills','listening');
insert into skill(id,description,name)values(5,'artist','acting');
insert into skill(id,description,name)values(6,'social help','charity');
select * from skill;

insert into post_type(id,name)values(1,'business');
insert into post_type(id,name)values(2,'business');
insert into post_type(id,name)values(3,'service');
insert into post_type(id,name)values(4,'entrepreneur');
insert into post_type(id,name)values(5,'self-employed');
insert into post_type(id,name)values(6,'labour');
select * from post_type;


insert into department(id,name)values(1,'bpo');
insert into department(id,name)values(2,'IT');
insert into department(id,name)values(3,'HR');
insert into department(id,name)values(4,'NETWORK');
insert into department(id,name)values(5,'CORE');
insert into department(id,name)values(6,'INSUARANCE');
select * from department;

insert into degree(id,department_id,name)values(1,1,'EEE');
insert into degree(id,department_id,name)values(2,2,'ECE');
insert into degree(id,department_id,name)values(3,3,'CS');
insert into degree(id,department_id,name)values(4,4,'CIVIL');
insert into degree(id,department_id,name)values(5,5,'MECH');
insert into degree(id,department_id,name)values(6,6,'IT');
select * from degree;

insert into profile(id,address,batch,degree_id,designation,gender)values(1,'London','En',1,'HR','Male');
insert into profile(id,address,batch,degree_id,designation,gender)values(2,'Chennai','For',2,'Manager','Female');
insert into profile(id,address,batch,degree_id,designation,gender)values(3,'Pune','En',3,'MD','Male');
insert into profile(id,address,batch,degree_id,designation,gender)values(4,'Banglore','For',4,'CEO','Female');
insert into profile(id,address,batch,degree_id,designation,gender)values(5,'Mumbai','En',5,'Sales','Male');
select * from profile;

insert into higher_degree(id,degree_name,university_name,profile_id)values(1,'BE','MIT',1);
insert into higher_degree(id,degree_name,university_name,profile_id)values(2,'BE','STANFORD',2);
insert into higher_degree(id,degree_name,university_name,profile_id)values(3,'ME','DELLAS',3);
insert into higher_degree(id,degree_name,university_name,profile_id)values(4,'MS','TEXAS',4);
insert into higher_degree(id,degree_name,university_name,profile_id)values(5,'BE','SPPU',5);
select * from higher_degree;

insert into experience(id,company_name,currentvalue,enddate,startdate,profile_id)values(2,'CTS',1,TO_DATE('2008/11/11','YYYY/MM/DD'),TO_DATE('2019/11/11','YYYY/MM/DD'),2);


insert into project(id,name,number_of_members,profile_id,short_description)values(1,'Alumini management',10,1,'for school and college');
insert into project(id,name,number_of_members,profile_id,short_description)values(2,'Library management',11,2,'for school and college');


insert into user_new(id,emailid,name,password,phonenumber,profile_id,role_id,username)values(1,'abcd@efgh.com','abcd','efgh',9884642005,1,1,'abcdefgh');
insert into user_new(id,emailid,name,password,phonenumber,profile_id,role_id,username)values(2,'ijkl@mnop.com','ijkl','mnop',9845621745,2,2,'ijklmnop');
insert into user_new(id,emailid,name,password,phonenumber,profile_id,role_id,username)values(3,'vriv@mnop.com','mnbop','kiji',487845654,3,3,'lmvnfsop');

insert into querytable(id,content,dateof,parent_id,user_id)values(1,'Alumini management',TO_DATE('2008/11/11','YYYY/MM/DD'),1,1);
insert into querytable(id,content,dateof,parent_id,user_id)values(2,'Library management',To_DATE('2008/11/19','YYYY/MM/DD'),2,2);

 insert into event(id,dateof,descriptionValue,invitation,name,organiser_id)values(1,TO_DATE('2008/11/11','YYYY/MM/DD'),'Alumni meet','OBA','ProGrad',1);
 insert into event(id,dateof,descriptionValue,invitation,name,organiser_id)values(2,TO_DATE('2008/11/11','YYYY/MM/DD'),'Library opening','member','FACEPrep',2);
