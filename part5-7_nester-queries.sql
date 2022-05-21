-------------------------------------------
-- NESTED QUERIES                        --
-- https://youtu.be/HXV3zeQKqGY?t=11511  --
-------------------------------------------

-- FIND NAMES OF ALL EMPLOYEES WHO HAVE SOLD OVER 30,000 TO A SINGLE CLIENT
SELECT employee.first_name, employee.last_name
FROM employee
WHERE employee.emp_id IN (
    SELECT works_with.emp_id 
    FROM works_with
    WHERE works_with.total_sales > 30000
);

SELECT * FROM branch;

-- FIND ALL CLIENTS WHO ARE HANDLED BY THE BRANCH THAT MICHAEL SCOTT MANAGES
-- ASSUME YOU KNOW MICHAEL'S ID
SELECT client.client_name
FROM client
WHERE client.branch_id = (
    SELECT branch.branch_id
    FROM branch
    WHERE branch.mgr_id = 102
    LIMIT 1 
);
--> LIMIT 1: ensure that this SELECT expression does no return more than one entry to the outter SELECT
