SELECT name AS student_name, title AS course_title
FROM enrollments
INNER JOIN students
ON enrollments.student_id = students.id
INNER JOIN courses
ON enrollments.course_id = courses.id
ORDER BY student_name, course_title;
