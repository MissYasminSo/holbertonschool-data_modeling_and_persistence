SELECT name as author_name, title
FROM authors
LEFT JOIN books
ON authors.id = books.author_id
ORDER BY author_name, title;
