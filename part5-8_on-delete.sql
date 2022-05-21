-------------------------------------------
-- ON DELETE                             --
-- https://youtu.be/HXV3zeQKqGY?t=12114  --
-------------------------------------------

DELETE FROM employee
WHERE emp_id = 102;

SELECT * FROM branch; --> Scranton mgr_id should be set to NULL after removing emp_id = 102
SELECT * FROM employee; --> super_id = 102 should be set to NULL after removing emp_id = 102


DELETE FROM branch
WHERE branch_id = 2;

SELECT * FROM branch_supplier; --> There's no longer branch suppplieres with branch_id = 2 (because of ON DELETE CASCADE)


