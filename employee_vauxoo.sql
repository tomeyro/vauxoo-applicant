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

-- Creating staff table
CREATE TABLE employee (
  id integer PRIMARY KEY,
  first_name varchar(255),
  last_name varchar(255),
  department_id integer REFERENCES employee_department (id)
);

-- Populating departments table
INSERT INTO employee_department (id, name, description) VALUES
(1, 'Production', 'Production Department'), (2, 'Accounting', 'Accounting Department'),
(3, 'Purchasing', 'Purchasing Department'), (4, 'Marketing', 'Marketing Department'),
(5, 'HR', 'HR Department'), (6, 'IT', 'IT Department');

-- Populating staff table
INSERT INTO employee (id, first_name, last_name, department_id) VALUES
(1, 'Tomas', 'Alvarez', 6), (2, 'Alicia', 'Fuenmayor', 2),
(3, 'Zadquiel', 'Barros', 4), (4, 'Michelle', 'Barros', 5);

-- ...
