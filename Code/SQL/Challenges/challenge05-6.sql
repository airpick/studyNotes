# Challenge 05 - 6
# How many films have the word Truman somewhere in the title?

SELECT COUNT (title)
FROM film
WHERE title ILIKE '%Truman%';