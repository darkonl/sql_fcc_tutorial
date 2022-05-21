---------------------------------------------------------
-- MORE BASIC QUERIES                                  --
-- https://www.youtube.com/watch?v=HXV3zeQKqGY&t=9027s --
---------------------------------------------------------

-- FIND ALL EMPLOYEES
SELECT * FROM employee;
-- FIND ALL CLIENTS
SELECT * FROM client;
-- FIND ALL EMPLOYEES ORDERED BY SALARY
SELECT * FROM employee ORDER BY salary;
SELECT * FROM employee ORDER BY salary DESC;
-- FIND ALL EMPLOYEES  ORDER BY sex then name
SELECT * FROM employee ORDER BY sex, first_name, last_name;
-- FIND THE FIRST 5 EMPLOYEES IN THE TABLE
SELECT * FROM employee LIMIT 5;
-- FIND THE FIRST AND LAST NAMES OF ALL EMPLOYEES
SELECT first_name, last_name FROM employee;
-- FIND THE FORENAME AND SURNAMES OF ALL EMPLOYEES
SELECT first_name AS forename, last_name AS surname FROM employee; -->> AS
-- FIND ALL THE DIFFERENT GENDERS
SELECT DISTINCT sex FROM employee; -->> DISTINCT