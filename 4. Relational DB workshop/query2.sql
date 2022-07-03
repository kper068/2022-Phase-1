-- Exercise 2 --
CREATE TABLE school
(
    subject_id INT PRIMARY KEY,
    subject_name VARCHAR(20) NOT NULL,
    max_score INT NOT NULL,
    lecturer VARCHAR(20) NOT NULL
);

CREATE TABLE student
(
    student_id INT PRIMARY KEY,
    student_name VARCHAR(20) NOT NULL,
    city VARCHAR(20) NOT NULL,
    subject_id INT NOT NULL
);

INSERT INTO school(subject_id, subject_name, max_score, lecturer)
VALUES
    (11, 'Math', 130, 'Christena Solem'),
    (12, 'Computer Science', 150, 'Jaime Pille'),
    (13, 'Biology', 300, 'Carrol Denmark'),
    (14, 'Geography', 220, 'Yuette Galang'),
    (15, 'Physics', 110, 'Colton Rather'),
    (16, 'Chemistry', 400, 'Nan Mongeau');

INSERT INTO student(student_id, student_name, city, subject_id)
VALUES
    (2001, 'Thurman Thorn', 'New York', 11),
    (2002, 'Sharda Clemens', 'San Francisco', 12),
    (2003, 'Buck Elkins', 'New York', 13),
    (2004, 'Fabian Johns', 'Boston', 15),
    (2005, 'Brad Cameron', 'Stanford', 11),
    (2006, 'Sofia Roles', 'Boston', 16),
    (2007, 'Rory Pietila', 'New Haven', 12);

SELECT st.student_name, sc.subject_name, sc.lecturer, sc.max_score
FROM school AS sc
JOIN student AS st
ON sc.subject_id = st.subject_id
WHERE (sc.max_score BETWEEN 100 AND 200) AND (sc.subject_id <> 12)