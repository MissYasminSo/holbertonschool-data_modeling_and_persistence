SELECT courses.title, assignments.title
FROM courses
LEFT JOIN assignments
ON assignments.course_id = courses.id
ORDER BY courses.title, assignments.title;
