SELECT course_title
FROM
(
    SELECT title AS course_title, COUNT(student_id) AS student_count
    FROM courses
    LEFT JOIN enrollments
    ON enrollments.course_id = courses.id
    GROUP BY course_title
)
WHERE student_count > (
    SELECT AVG(student_count) AS student_count_avg
    FROM
    (
        SELECT title AS course_title, COUNT(student_id) AS student_count
        FROM courses
        LEFT JOIN enrollments
        ON enrollments.course_id = courses.id
        GROUP BY course_title
    )
)
ORDER BY course_title;
