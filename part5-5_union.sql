-------------------------------------------
-- UNION                                 --
-- https://youtu.be/HXV3zeQKqGY?t=10434  --
-------------------------------------------

-- FIND A LIST OF EMPLOYEE AND BRANCH NAMES
SELECT first_name
FROM employee
UNION 
SELECT branch_name
FROM branch;

SELECT first_name, last_name
FROM employee
UNION 
SELECT branch_name
FROM branch; -- throws an error: The used SELECT statements have a different number of columns (same number of columns in both select command must be provided)

SELECT first_name AS names
FROM employee
UNION 
SELECT branch_name
FROM branch
UNION 
SELECT client_name
FROM client; 

-- FIND A LIST OF ALL CLIENTS & BRANCH SUPPLIERS' NAMES
SELECT client_name, client.branch_id
FROM client
UNION
SELECT supplier_name, branch_supplier.branch_id
FROM branch_supplier;


-- FIND A LIST OF ALL MONEY SPENT OR EARNED BY THE COMPANY
SELECT salary 
FROM employee
UNION
SELECT total_sales
FROM works_with;