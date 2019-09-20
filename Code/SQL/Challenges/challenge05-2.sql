# Challenge 05 - 2
# How many actors have a first name that starts with the letter P? 

SELECT COUNT (first_name)
FROM actor
WHERE first_name LIKE ('P%');