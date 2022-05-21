-------------------------------------------
-- JOINS                                 --
-- https://youtu.be/HXV3zeQKqGY?t=10897  --
-------------------------------------------

INSERT INTO branch VALUES(4, 'Buffalo', NULL, NULL);
SELECT * FROM branch;

-- FIND ALL BRANCHES AND THE NAMES OF THEIR MANAGERS
SELECT employee.emp_id, employee.first_name, branch.branch_name
FROM employee
JOIN branch
ON employee.emp_id = branch.mgr_id; --> JOIN

-- FIND ALL BRANCHES AND THE NAMES OF THEIR MANAGERS
SELECT employee.emp_id, employee.first_name, branch.branch_name
FROM employee
LEFT JOIN branch
ON employee.emp_id = branch.mgr_id
ORDER BY branch.branch_name DESC; --> LEFT JOIN


-- FIND ALL BRANCHES AND THE NAMES OF THEIR MANAGERS
SELECT employee.emp_id, employee.first_name, branch.branch_name
FROM employee
RIGHT JOIN branch
ON employee.emp_id = branch.mgr_id
ORDER BY branch.branch_name DESC; --> RIGHT JOIN

