-- create table employee0
CREATE TABLE employee0 (
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    ID INT NOT NULL,
    hire_date DATE,
    salary INT,
    PRIMARY KEY (ID)
);

-- create table absenteeeism_annual
CREATE TABLE absenteeism_annual (
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    id INT NOT NULL,
    absenteeism INT
);

-- insert data into employee0
insert into employee0 ( first_name, last_name, id, hire_date, salary)
values 
	('budi', 'buda', 0001, '2021-02-15', 70000),
    ('dora', 'dore', 0002, '2021-03-19', 90000),
    ('koko', 'keke', 0003, '2021-05-20', 50000),
    ('tola', 'tole', 0004, '2021-04-12', 40000),
    ('tuna', 'tuni', 0005, '2021-06-24', 100000);

-- insert data into absenteesim_annual
insert into absenteeism_annual( first_name, last_name, id, absenteeism)
values
	('budi', 'buda', 0001, 4),
    ('dora', 'dore', 0002, 1),
    ('koko', 'keke', 0003, 10),
    ('tola', 'tole', 0004, 12),
    ('tuna', 'tuni', 0005, 7);
    
-- view the table
SELECT 
    *
FROM
    employee0;
SELECT 
    *
FROM
    absenteeism_annual;

-- find salary between 60000 - 100000
SELECT 
    CONCAT(first_name, ' ', last_name) AS Name
FROM
    employee0
WHERE
    salary BETWEEN 60000 AND 100000;
    
-- add column employee0
alter table employee0
add gender varchar(10);

alter table employee0
drop column gender;

-- find top salary
SELECT 
    CONCAT(first_name, ' ', last_name) AS name, salary
FROM
    employee0
ORDER BY salary DESC;

-- join employee0 and absenteeism
SELECT 
    t1.first_name, t1.salary, t2.absenteeism
FROM
    employee0 t1
        INNER JOIN
    absenteeism_annual t2 ON t1.id = t2.id
ORDER BY salary desc;

-- subquery
SELECT 
    t1.first_name, t1.count_salary
FROM
    (SELECT 
        first_name, COUNT(salary) AS count_salary
    FROM
        employee0) t1;
        
