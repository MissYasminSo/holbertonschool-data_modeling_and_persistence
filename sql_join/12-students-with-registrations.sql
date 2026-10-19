SELECT students.name
FROM students
JOIN registrations
ON students.id = registrations.student_id
GROUP BY students.name;
