-----------------------------------------
-- FUNCTIONS                           --
-- https://youtu.be/HXV3zeQKqGY?t=9385 --
-----------------------------------------

DESCRIBE employee;

-- FIND THE NUMBER OF EMPLOYEES
SELECT COUNT(emp_id) FROM employee; -->> COUNT
-- FIND THE NUMBER OF EMPLOYEES without supers
SELECT COUNT(super_id) FROM employee; -->> COUNT
-- FIND THE NUMBER OF FEMALE EMPLOYEES BORN AFTER 1970
SELECT COUNT(emp_id)
FROM employee
WHERE sex = 'F' AND birth_day >= '1971-01-01'; -->> COUNT
-- FIND THE AVERAGE OF ALL EMPLOYEE'S SALARIES WHO ARE MALE
SELECT AVG(salary)
FROM employee
WHERE sex = 'M'; -->> AVG
-- FIND THE SUM OF ALL EMPLOYEE'S SALARIES
SELECT SUM(salary)
FROM employee; -->> SUM
-- FIND OUT HOW MANE MALES AND FEMALES THERE ARE
SELECT COUNT(sex), sex
FROM employee
GROUP BY sex; -->> GROUP BY
-- FIND THE TOTAL SALES OF EACH SALESMAN
SELECT SUM(total_sales), emp_id
FROM works_with
GROUP BY emp_id;