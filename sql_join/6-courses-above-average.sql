SELECT course_title
FROM
(
    SELECT courses.title AS course_title, COUNT(DISTINCT student_id) AS student_count
    FROM courses
    LEFT JOIN enrollments
    ON enrollments.course_id = courses.id
    GROUP BY courses.title
) AS course_count
WHERE student_count > (
    SELECT AVG(student_count)
    FROM
    (
        SELECT courses.id, COUNT(DISTINCT student_id) AS student_count
        FROM courses
        LEFT JOIN enrollments
        ON enrollments.course_id = courses.id
        GROUP BY courses.id
    ) AS avg_course_count
)
ORDER BY course_title;
