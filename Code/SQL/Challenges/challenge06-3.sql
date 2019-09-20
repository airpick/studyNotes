# Challenge 06 - 3

# We want to send coupons to the 5 customers who have spent the most amount of money. 
# Get me the customer ids of the top 5 spenders.

SELECT customer_id,SUM(amount)
FROM payment
GROUP BY customer_id
ORDER BY SUM(amount) DESC
LIMIT 5;