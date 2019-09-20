# Challenge 07 - 2

# When grouping by rating, what movie ratings have an average rental duration of more than 5 days? 

SELECT rating, ROUND ( AVG ( rental_duration ) , 2 )
FROM film
GROUP BY rating
HAVING ROUND ( AVG ( rental_duration ) , 2 ) > 5
ORDER BY ROUND ( AVG ( rental_duration ) , 2 ) DESC;
