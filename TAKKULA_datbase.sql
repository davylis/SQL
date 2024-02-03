-- 1.1
SELECT * FROM Campus
-- 1.2
SELECT city, campus_name FROM Campus
ORDER BY city ASC, campus_name ASC;
-- 1.3
SELECT sanction_code, description, decision_maker FROM SanctionType
ORDER BY sanction_code DESC;
-- 1.4
SELECT description FROM MisconductType
ORDER BY description ASC;
-- 1.5
SELECT surname, first_name, teacher_number FROM Teacher
ORDER BY surname, first_name, teacher_number ASC;
-- 1.6
SELECT student_number, surname, first_name, birth_date, gender FROM Student
WHERE gender = 'F'
ORDER BY student_number ASC;
-- 1.7
SELECT salary, surname, first_name, teacher_number FROM Teacher
WHERE salary > 16000
ORDER BY salary DESC;
-- 1.8
SELECT teacher_number FROM Teacher
WHERE first_name = 'Veera' AND surname = 'Vainio';
-- 1.9
SELECT examiner, course_code, instance_number, student_number,
grade FROM CourseGrade
WHERE examiner = 'h784'
ORDER BY course_code, instance_number, student_number ASC;
-- 1.10
SELECT start_date, end_date, course_code, instance_number FROM CourseInstance
WHERE YEAR (start_date) = 2007 AND YEAR (end_date) = 2007
ORDER BY start_date, end_date, course_code, instance_number ASC;
-- 1.11
SELECT gender, birth_date, surname, first_name FROM Student
WHERE surname BETWEEN 'A' AND 'K'
ORDER BY 
CASE WHEN gender = 'M' THEN 0
     WHEN gender = 'F' THEN 1
     ELSE 2
END,
birth_date ASC;
-- 1.13
SELECT table_name
FROM information_schema.tables
ORDER BY table_name
-- 1.14
SELECT table_name, column_name, data_type, character_maximum_length,
numeric_precision, numeric_scale, is_nullable
FROM information_schema.columns
WHERE table_name = 'Teacher'
-- 1.15
SELECT table_catalog, table_name, constraint_name, constraint_type
FROM information_schema.table_constraints
ORDER BY table_name, constraint_name