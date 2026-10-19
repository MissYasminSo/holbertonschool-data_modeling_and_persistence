SELECT students.name, courses.title
FROM registrations
JOIN students
ON students.id = registrations.student_id
JOIN courses
ON courses.id = registrations.course_id
ORDER BY students.name, courses.title;
