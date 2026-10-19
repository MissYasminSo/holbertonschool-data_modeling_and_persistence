SELECT name AS student_name
FROM students
WHERE id IN (
    SELECT student_id
    FROM enrollments
    WHERE student_id = id
)
ORDER By student_name;

