# Challenge 05 - 5
# How many films have a rating of R and a replacement cost between $5 and $15? 

SELECT COUNT (rating)
FROM film
WHERE rating = 'R' 
AND replacement_cost BETWEEN 5 AND 15;