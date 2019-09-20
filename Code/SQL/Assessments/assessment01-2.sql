# Assessment 01 - 2

# How many films begin with the letter J?

SELECT COUNT(title)
FROM film
WHERE title
LIKE 'J%';
