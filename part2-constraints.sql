-- TUTORIAL FROM: https://www.youtube.com/watch?v=HXV3zeQKqGY&t=4179s

--PART 1--
--Constraints: NOT NULL, UNIQUE

--create table with constraints
CREATE TABLE student (
    student_id INT,
    name VARCHAR(20) NOT NULL,
    major VARCHAR(20) UNIQUE,
    PRIMARY KEY(student_id)
);


--inserting data
INSERT INTO student VALUES(1, 'Jack', 'Biology');
INSERT INTO student VALUES(2, 'Kate', 'Sociology');
INSERT INTO student(student_id, name) VALUES(3, NULL); --throws error: Column 'name' cannot be null
INSERT INTO student VALUES(4, 'Jack', 'Biology'); --throws error: Duplicate entry 'Biology' for key 'student.major'
INSERT INTO student VALUES(5, 'Mike', 'Comp. Sci');

--show all data
DESCRIBE student;

--show all data
SELECT * FROM student;


--PART 2--
--Constraints: AUTO_INCREMENT, DEFAUL


--drop all rows from table
DELETE FROM student;

--create table with constraints
CREATE TABLE student (
    student_id INT AUTO_INCREMENT,
    name VARCHAR(20),
    major VARCHAR(20) DEFAULT 'undecided',
    PRIMARY KEY(student_id)
);
