# Challenge 06 - 2

# Corporate headquarters is auditing our store!
# They want to know the average replacement cost of movies by rating. 

# For example, R rated movies have an average replacement cost of $20.23. 

SELECT rating, ROUND ( AVG (replacement_cost) , 2 )
FROM film
GROUP BY rating
ORDER BY AVG ( replacement_cost ) ASC;