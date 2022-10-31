CREATE DATABASE dql3;
USE dql3;
CREATE TABLE department(
dept_id INT(11) NOT NULL PRIMARY KEY,
dept_name VARCHAR(25)
);
CREATE TABLE staff(
staff_id INT(11) NOT NULL PRIMARY KEY,
staff_name VARCHAR(25),
supervisor_id INT(11),
salary BIGINT(20),
join_date DATE,
dept_id INT(11),
FOREIGN KEY(dept_id) REFERENCES department(dept_id)
);
CREATE TABLE grade(
grade VARCHAR(3),
min_salary INT(11),
max_salary INT(11)
);
INSERT INTO department Values
(10,'SALES'),
(20,'IT'),
(30,'FINANCE');
select* FROM department;

INSERT INTO staff VALUES
(22,'George',27,1000000,'2020-10-9',10),
(23,'Jomy',20,500000,'2021-02-03',10),
(87,'Ameena',49,2000000,'2022-12-01',10),
(92,'Faheema',17,2000000,'2022-01-01',20),
(54,'Rishana',27,500000,'2021-11-29',10),
(65,'Sasna',20,100000,'2020-01-21',30);

select * from staff;

SELECT AVG(salary) from staff ;

SELECT staff_id,staff_name,salary,dept_id
FROM staff
WHERE salary > (select avg(salary) from staff) AND dept_id=10
ORDER BY staff_id ASC;
