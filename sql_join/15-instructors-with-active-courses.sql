SELECT instructors.name
FROM courses
JOIN instructors
ON courses.instructor_id = instructors.id
JOIN registrations
ON registrations.course_id = courses.id
GROUP BY instructors.name
ORDER BY instructors.name;
