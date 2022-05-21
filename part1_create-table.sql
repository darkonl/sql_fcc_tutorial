-- TUTORIAL FROM: https://www.youtube.com/watch?v=HXV3zeQKqGY&t=4179s

--create new table providing columns description (names and data types)
CREATE TABLE student (
    student_id INT PRIMARY KEY,
    name VARCHAR(20),
    major VARCHAR(20)
);

--another way to create table: primary key definition
CREATE TABLE student (
    student_id INT,
    name VARCHAR(20),
    major VARCHAR(20),
    PRIMARY KEY(student_id)
);

--describe table (columns and data types)
DESCRIBE student;


--remove table
DROP TABLE student;


--modify table adding a new column
ALTER TABLE student ADD gpa DECIMAL(3,2);


--modify table removing an existing column
ALTER TABLE student DROP gpa;


--insert data into table
INSERT INTO student VALUES(
    2, 'Kate', 'Sociology'
);

--insert data into table: specify columns
INSERT INTO student(student_id, name) VALUES(
    3, 'Claire'
);

--show all data from table
SELECT * FROM student;