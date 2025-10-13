CREATE TABLE employee (id int PRIMARY key AUTO_INCREMENT,name varchar(40),department varchar(40),`leave` int);
CREATE TABLE exam (id int PRIMARY key AUTO_INCREMENT,employee_id int,`exam_status` varchar(40),FOREIGN KEY (employee_id) REFERENCES employee(id));

INSERT INTO employee (`id`, `name`, `department`, `leave`) VALUES
(1, 'raju', 'sales', 1),
(2, 'sangeetha', 'sales', 3),
(3, 'vinay', 'operations', 8),
(4, 'abey', 'packing', 2),
(5, 'thomas', 'packing', 1),
(6, 'muneer', 'operations', 7),
(7, 'aparna', 'sales', 3),
(8, 'abid', 'operations', 9),
(9, 'fathima', 'sales', 11),
(10, 'varghese', 'operations', 14);

INSERT INTO exam (`id`,`employee_id`,`exam_status`) VALUES
(1,2,'pass'),
(2,5,'fail'),
(3,1,'fail'),
(4,8,'pass'),
(5,3,'pass'),
(6,1,'pass'),
(7,6,'fail'),
(8,9,'pass'),
(9,10,'pass');

-- #Write a query to get the list of employees who took more than 5 leaves and are in sales department
SELECT * from employee WHERE `leave` > 5 AND department = 'sales';

-- #Write a query to get the number of employees working in operations department 
SELECT COUNT(name) FROM employee WHERE department = 'operations';

-- # Write a single query to get the count of employees working in each department. 
SELECT department,COUNT(department) as 'employees working' FROM employee GROUP BY department; 

-- #Write a query to list the departments where all its employees altogether took more than 10 leaves.
SELECT department,SUM(`leave`) as leaves_taken FROM employee GROUP BY department HAVING leaves_taken > 10;

-- #Write a query to list all the employee names who have passed the exam
SELECT employee.name FROM employee INNER JOIN exam ON employee.id = exam.employee_id WHERE exam.exam_status = 'pass';

-- #Write a query to list all the employee names who have not attended the exam
SELECT employee.name FROM employee LEFT JOIN exam ON employee.id=exam.employee_id WHERE exam.exam_status is null;
