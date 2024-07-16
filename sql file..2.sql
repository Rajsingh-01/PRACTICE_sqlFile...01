create database SingleElement;
use SingleElement;
drop table test;
create table test(
id int,
parrent_id int,
name varchar (50));
insert into test(id,parrent_id,name)
values
(1,null,'raj'),
(2,1,'misthi'),
(3,2,'mohan'),
(4,3,'murti'),
(5,4,'pragya'),
(6,5,'Aagya'),
(7,6,'Hanuman'),
(8,7,'balak'),
(9,8,'muktidham'),
(10,9,'Bagheshwar');
CREATE VIEW test_view AS
SELECT id, parrent_id, name
FROM test
WHERE parrent_id IS NULL;

SELECT * FROM test_view WHERE id = 10;

select*from test where id = 3;
select*from test;

drop database SingleElement;


