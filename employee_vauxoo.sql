-- Your sql code in this file
-- NOTE: Please, don't add sentence to create database in this script file.
--       You can create database locally to test it.
--       Consider add ';' at end sentence.

-- Creating departments table
CREATE TABLE employee_department (
  id integer PRIMARY KEY,
  name varchar(255),
  description varchar(255)
);

-- Creating employees table
CREATE TABLE employee (
  id integer PRIMARY KEY,
  first_name varchar(255),
  last_name varchar(255),
  department_id integer REFERENCES employee_department (id),
  boss_id integer REFERENCES employee (id)
);

-- Populating departments table
INSERT INTO employee_department (id, name, description) VALUES
(1, 'Production', 'Production department'), (2, 'Accounting', 'Accounting department'),
(3, 'Purchasing', 'Purchasing department'), (4, 'Marketing', 'Marketing department'),
(5, 'HR', 'HR department'), (6, 'IT', 'IT department');

-- Populating employees table
INSERT INTO employee (id, first_name, last_name, department_id, boss_id) VALUES
(1, 'Tomas', 'Alvarez', 6, 4), (2, 'Alicia', 'Fuenmayor', 2, 3),
(3, 'Zadquiel', 'Barros', 4, 1), (4, 'Michelle', 'Barros', 5, 2);

-- Creating hobbies table
CREATE TABLE employee_hobby (
  id integer PRIMARY KEY,
  name varchar(255),
  description varchar(255)
);

-- Creating employees and hobbies relationship table
CREATE TABLE employees_hobbies (
  employee_id integer REFERENCES employee (id),
  department_id integer REFERENCES employee_department (id),
  PRIMARY KEY (employee_id, department_id)
);

-- Populating hobbies table
INSERT INTO employee_hobby (id, name, description) VALUES
(1, 'Soccer', 'Playing soccer'), (2, 'Video Games', 'Playing video games'),
(3, 'Reading', 'Reading good books');

-- Adding hobbies to employees
INSERT INTO employees_hobbies (employee_id, department_id) VALUES
(1, 2), (1, 3), (2, 3), (2, 1),
(3, 1), (3, 2), (4, 1), (4, 3);

-- ...
