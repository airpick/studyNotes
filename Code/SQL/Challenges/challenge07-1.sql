# Challenge 07 - 1

# We want to know what customers are eligible for our platinum credit card. 
# The requirements are that the customer has at least a total of 40 transaction payments.

# What customers (by customer_id) are eligible for the credit card?

SELECT customer_id, COUNT ( customer_id )
FROM payment
GROUP BY customer_id
HAVING COUNT ( customer_id ) >= 40
ORDER BY COUNT ( customer_id ) DESC;
