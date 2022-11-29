Create table If Not Exists EmpDetails (DeptID varchar(20), EmpName varchar(20),	Salary int);

insert into EmpDetails (DeptID,	EmpName,	Salary) values ('Engg',	'Sam',	1000);
insert into EmpDetails (DeptID,	EmpName,	Salary) values ('Engg',	'Smith',	2000);
insert into EmpDetails (DeptID,	EmpName,	Salary) values ('Engg',	'Tom',	2000);
insert into EmpDetails (DeptID,	EmpName,	Salary) values ('HR',	'Denis',	1500);
insert into EmpDetails (DeptID,	EmpName,	Salary) values ('HR',	'Danny',	3000);
insert into EmpDetails (DeptID,	EmpName,	Salary) values ('IT',	'David',	2000);
insert into EmpDetails (DeptID,	EmpName,	Salary) values ('IT',	'John',	3000);

SELECT DeptID, EmpName, Salary 
FROM EmpDetails 
WHERE (Salary) IN (SELECT MAX(Salary) FROM EmpDetails GROUP BY DeptID)

################
CREATE TABLE Person ( name varchar(30), phone int, priority int );
 
INSERT INTO Person VALUES ( 'John Smith',  555111, 1 );
INSERT INTO Person VALUES ( 'John Smith',  555333, 2 );
INSERT INTO Person VALUES ( 'Ivan Ivanov', 555444, 1 );
INSERT INTO Person VALUES ( 'Ivan Ivanov', 555666, 2 );
INSERT INTO Person VALUES ( 'Ivan Ivanov', 555222, 3 );

WITH CTE AS (select *, row_number() over(partition by name 
                            order by priority desc) as t
from Person)


select * 
from CTE 
where t = 1
