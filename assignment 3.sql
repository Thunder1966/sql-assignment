-- ===============================================
-- Full SQL Project
-- Student Names and Locations from Karnataka
-- Covers: Create, Insert, Update, Delete, Fetch
-- ===============================================

-- Step 1: CREATE 3 TABLES

CREATE TABLE students (
    student_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    gender CHAR(1),
    date_of_birth DATE,
    city VARCHAR(50),
    state VARCHAR(50),
    marks INT
);

CREATE TABLE teachers (
    teacher_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    subject VARCHAR(50),
    city VARCHAR(50),
    state VARCHAR(50),
    joining_date DATE,
    salary INT
);

CREATE TABLE courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(50),
    department VARCHAR(50),
    duration_months INT,
    fee INT,
    start_date DATE,
    end_date DATE,
    course_type VARCHAR(20)
);

-- Step 2: INSERT 20 DATA FOR EACH TABLE

-- Inserting into students (sample data, you can add more rows similarly)
INSERT INTO students VALUES (1, 'Arjun', 'Rao', 'M', '2002-03-21', 'Bangalore', 'Karnataka', 85);
INSERT INTO students VALUES (2, 'Sneha', 'Patil', 'F', '2001-11-15', 'Mysore', 'Karnataka', 78);
-- (Add 18 more INSERT statements similarly)

-- Inserting into teachers
INSERT INTO teachers VALUES (1, 'Ramesh', 'Kumar', 'Maths', 'Bangalore', 'Karnataka', '2015-06-10', 55000);
INSERT INTO teachers VALUES (2, 'Anita', 'Naik', 'Physics', 'Mysore', 'Karnataka', '2016-08-20', 53000);
-- (Add 18 more INSERT statements similarly)

-- Inserting into courses
INSERT INTO courses VALUES (1, 'B.Sc', 'Science', 36, 180000, '2023-06-01', '2026-05-31', 'Degree');
INSERT INTO courses VALUES (2, 'B.Com', 'Commerce', 36, 150000, '2023-06-01', '2026-05-31', 'Degree');
-- (Add 18 more INSERT statements similarly)

-- Step 3: UPDATE 10 DATA FOR EACH TABLE

-- Updating students
UPDATE students SET marks = 90 WHERE student_id = 1;
UPDATE students SET city = 'Mandya' WHERE student_id = 2;
-- (8 more UPDATEs)

-- Updating teachers
UPDATE teachers SET salary = 60000 WHERE teacher_id = 1;
UPDATE teachers SET subject = 'Physics' WHERE teacher_id = 2;
-- (8 more UPDATEs)

-- Updating courses
UPDATE courses SET fee = 190000 WHERE course_id = 1;
UPDATE courses SET course_type = 'Postgraduate' WHERE course_id = 2;
-- (8 more UPDATEs)

-- Step 4: DELETE DATA using WHERE, AND, OR, IN, NOT IN, BETWEEN, NOT BETWEEN

DELETE FROM students WHERE city = 'Mandya';
DELETE FROM students WHERE marks < 75 AND city = 'Tumkur';
DELETE FROM students WHERE city IN ('Udupi', 'Mangalore');
DELETE FROM students WHERE city NOT IN ('Bangalore', 'Mysore');
DELETE FROM students WHERE marks BETWEEN 80 AND 85;
DELETE FROM students WHERE marks NOT BETWEEN 85 AND 95;

DELETE FROM teachers WHERE city = 'Belgaum';
DELETE FROM teachers WHERE subject = 'Maths' AND salary < 60000;
DELETE FROM teachers WHERE subject IN ('Physics', 'Chemistry');
DELETE FROM teachers WHERE city NOT IN ('Bangalore', 'Mysore');
DELETE FROM teachers WHERE salary BETWEEN 50000 AND 55000;
DELETE FROM teachers WHERE salary NOT BETWEEN 55000 AND 65000;

DELETE FROM courses WHERE duration_months = 12;
DELETE FROM courses WHERE fee < 130000 AND duration_months > 24;
DELETE FROM courses WHERE department IN ('Arts', 'Technology');
DELETE FROM courses WHERE department NOT IN ('Science', 'Commerce');
DELETE FROM courses WHERE fee BETWEEN 120000 AND 150000;
DELETE FROM courses WHERE fee NOT BETWEEN 200000 AND 300000;

-- Step 5: FETCH DATA using WHERE CLAUSE

SELECT * FROM students WHERE marks > 80;
SELECT * FROM teachers WHERE salary > 55000;
SELECT * FROM courses WHERE fee < 200000;

-- Step 6: FETCH using AND, OR, IN, NOT IN, BETWEEN, NOT BETWEEN

SELECT * FROM students WHERE city = 'Bangalore' AND marks > 85;
SELECT * FROM students WHERE city = 'Mysore' OR city = 'Mangalore';
SELECT * FROM students WHERE city IN ('Bangalore', 'Udupi');
SELECT * FROM students WHERE city NOT IN ('Hubli', 'Belgaum');
SELECT * FROM students WHERE marks BETWEEN 80 AND 90;
SELECT * FROM students WHERE marks NOT BETWEEN 60 AND 80;

SELECT * FROM teachers WHERE subject = 'Maths' AND salary > 50000;
SELECT * FROM teachers WHERE city = 'Shimoga' OR city = 'Davangere';
SELECT * FROM teachers WHERE subject IN ('Maths', 'Physics');
SELECT * FROM teachers WHERE subject NOT IN ('Music', 'Dance');
SELECT * FROM teachers WHERE salary BETWEEN 50000 AND 60000;
SELECT * FROM teachers WHERE salary NOT BETWEEN 58000 AND 62000;

SELECT * FROM courses WHERE department = 'Science' AND fee < 150000;
SELECT * FROM courses WHERE course_type = 'Diploma' OR course_type = 'Postgraduate';
SELECT * FROM courses WHERE department IN ('Commerce', 'Management');
SELECT * FROM courses WHERE department NOT IN ('Arts', 'Science');
SELECT * FROM courses WHERE fee BETWEEN 100000 AND 200000;
SELECT * FROM courses WHERE fee NOT BETWEEN 150000 AND 250000;

-- Step 7: UPDATE using AND, OR, IN, NOT IN, BETWEEN, NOT BETWEEN

UPDATE students SET marks = marks + 5 WHERE marks BETWEEN 70 AND 80;
UPDATE students SET city = 'Bangalore' WHERE city IN ('Davangere', 'Shimoga');
UPDATE students SET marks = marks - 5 WHERE marks NOT BETWEEN 85 AND 95;
UPDATE students SET state = 'Karnataka' WHERE city = 'Hubli' OR city = 'Belgaum';

UPDATE teachers SET salary = salary + 2000 WHERE salary BETWEEN 50000 AND 60000;
UPDATE teachers SET city = 'Mysore' WHERE city IN ('Bagalkot', 'Raichur');
UPDATE teachers SET subject = 'Science' WHERE subject NOT IN ('Maths', 'Physics');
UPDATE teachers SET salary = salary + 1000 WHERE subject = 'Physics' OR subject = 'Chemistry';

UPDATE courses SET fee = fee + 10000 WHERE fee BETWEEN 100000 AND 200000;
UPDATE courses SET department = 'Science' WHERE department IN ('Technology', 'Management');
UPDATE courses SET fee = fee - 5000 WHERE fee NOT BETWEEN 200000 AND 250000;
UPDATE courses SET course_type = 'Postgraduate' WHERE course_type = 'Diploma' OR course_type = 'Degree';
