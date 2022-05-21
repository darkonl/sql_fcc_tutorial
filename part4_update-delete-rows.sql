-- TUTORIAL FROM: https://www.youtube.com/watch?v=HXV3zeQKqGY&t=4179s

--show the whole table
SELECT * FROM student;

--update value for all rows
UPDATE student
set major = 'undecided';

--update value for rows with conditions
--Other comparisons: =, <>, >, <, >=, <=
UPDATE student
SET name = 'Tom', major = 'undecided'
WHERE student_id = 1;


--delete from table with condition
DELETE FROM student
WHERE student_id = 5;

--delete from table with condition
DELETE FROM student
WHERE name = 'Tom' AND major = 'undecided';


--delete the whole rows
DELETE FROM student;