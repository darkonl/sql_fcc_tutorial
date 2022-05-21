-- TUTORIAL FROM: https://www.youtube.com/watch?v=HXV3zeQKqGY&t=6971s

--show the whole table
SELECT * FROM student;


--show specific column
SELECT name, major FROM student;


--ordering queries (default ASC)
SELECT name, major FROM student ORDER BY name; 


--ordering queries (default ASC)
SELECT name, major FROM student ORDER BY student_id DESC; 


--ordering queries using two columns (default ASC)
SELECT student_id, name, major FROM student ORDER BY student_id, major DESC; 


--limiting the results
SELECT student_id, name, major 
FROM student 
ORDER BY name, major ASC 
LIMIT 2; 


--select with conditions
SELECT name, major
FROM student
WHERE major <> 'Chemistry';

--select with conditions
SELECT *
FROM student
WHERE student_id <8;


--search in a range of possibilities
SELECT *
FROM student
WHERE name IN ('Claire', 'Kate', 'Mike');