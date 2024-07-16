create database School;
use School;
create database if not exists sunflower;
use sunflower;
drop database school;
drop table StudentDetails;
create table StudentDetails(
id int,
roll_no varchar(50),
name varchar(60),
class int,
gender varchar(30),
city varchar(70),
marks int );

INSERT INTO StudentDetails ( id, roll_no, name, class, gender, city,marks )
values
( 1,12,'Sikha',2,'Female','bhopal',110),
( 2,25,'Aman',7,'Male','kanpur',250),
( 3,35,'Gopal',9,'Male','punjab',107),
( 4,15,'Shejal',8,'Female','jaipur',117),
( 5,35,'Gopal',9,'Male','punjab',70),
( 6,35,'jopal',9,'Male','punjab',57),
( 7,35,'kopal',9,'Male','punjab',17),
( 8,35,'topal',9,'Male','punjab',17);

-- here we use AND opertor *** isme hum basically apni kisi bi particular element ki id ko add krke uska data nikal skte h ******
select *from studentDetails where marks>100 and city ='punjab' and roll_no=35 and class=9 and id= 3;

-- here we use between opertor *** isme hum basically apni kisi bi particular element  value ko between 100  AND 180 data nikal skte h ******
select *from studentDetails where MARKS between 100  AND 180;

-- *****here we use IN opertor *** isme hum basically apni kisi bi particular element  value
-- ko In krke nikal skte  in ('surat','hariyana','sikkim') hai agr vo data present hota to putput aayega ni to kch ni aayega ******
select*from studentDetails where city in ('kanpur','punjab','sikkim') ;

-- ko In krke nikal skte  Notin ('surat','hariyana','sikkim') hai agr vo data ko reverse krta h ****** NOT SO USED IN SQL
select*from studentDetails where city not in ('kanpur','punjab','sikkim') ;


-- Limit  use krne se agr hum apne table me kewal 1,2,3 value ko he dekhna chahte hai to tb hum { LIMIT 1 } use krenge 
select*from studentDetails limit 7;

-- OrderBY Clauses ...this is the method we  show our data in Descending OR Ascending order by their city+marks+name 
select*from studentDetails order by city asc;
select*from studentDetails order by city desc limit 3;

-- MARKS
select*from studentDetails order by marks asc;
select*from studentDetails order by marks desc;

-- NAME
select*from studentDetails order by  name asc;
select*from studentDetails order by name desc;

-- ***in OrderByClause here we shown all things in single line syntax like asscending+descanding
SELECT *FROM employees ORDER BY age ASC, name ASC,roll_no asc;



-- Aggregate Function Count Max Min Sum Avg 

select count(name+number)from studentDetails;
select max(marks)from studentDetails;
select min(marks)from studentDetails;
select sum(4)from studentDetails;
select avg(marks)from studentDetails;

select*from StudentDetails;


-- this Distinct keyword is represent that you can not see the repeated value from the above table******
select distinct city from StudentDetails;
select distinct marks from StudentDetails;
select distinct roll_no from StudentDetails;
select distinct name from StudentDetails;


-- where command is basically show that the data that user want to see   
-- jaise 50 marks se less than kitne student hai & kitne student punjab se hai like that ****
select*from StudentDetails where marks < 50;
select *from StudentDetails where marks >120;
select*from StudentDetails where city = 'punjab';
select*from StudentDetails;



-- this below command is used to show all the databases ******
show databases; 

-- this below command is used to show how many tables are present in this database ******
show tables;
