SELECT course_title
FROM (
    SELECT
        courses.title AS course_title, COUNT(assignments.id) AS assignment_count
    FROM courses
    LEFT JOIN assignments
    ON courses.id = assignments.course_id
    GROUP BY courses.id, courses.title
) AS course_counts
WHERE assignment_count > (
    SELECT AVG(assignment_count)
    FROM (
        SELECT
            COUNT(assignments.id) AS assignment_count
        FROM courses
        LEFT JOIN assignments
        ON courses.id = assignments.course_id
        GROUP BY courses.id
    ) AS avg_course_counts
)
ORDER BY course_title;
