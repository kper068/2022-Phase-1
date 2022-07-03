-- Exercise 1 --
CREATE TABLE school
(
    school_id INT PRIMARY KEY,
    school_name VARCHAR(20) NOT NULL,
    city VARCHAR(15) NOT NULL
);

CREATE Table student
(
    student_id INT PRIMARY KEY,
    student_name VARCHAR(15) NOT NULL,
    city VARCHAR(15) NOT NULL,
    school_id INT NOT NULL
);

INSERT INTO school(school_id, school_name, city)
VALUES
    (1, 'Stanford', 'Stanford'),
    (2, 'University of Cali', 'San Francisco'),
    (3, 'Harvard University', 'New York'),
    (4, 'MIT', 'Boston'),
    (5, 'Yale', 'New Haven');

INSERT INTO student(student_id, student_name, city, school_id)
VALUES
    (1001, 'Peter Brebec', 'New York', 1),
    (1002, 'John Goorgy', 'San Francisco', 2),
    (2003, 'Brad Smith', 'New York', 3),
    (1004, 'Fabian Johns', 'Boston', 5),
    (1005, 'Brad Cameron', 'Stanford', 1),
    (1006, 'Geoff Firby', 'Boston', 5),
    (1007, 'Johnny Blue', 'New Haven', 2),
    (1008, 'Johse Brook', 'Miami', 2);

SELECT sc.school_name, st.student_name, st.city
FROM school AS sc
JOIN student AS st
ON sc.school_id = st.school_id
WHERE sc.city = st.city AND st.city <> 'New York';