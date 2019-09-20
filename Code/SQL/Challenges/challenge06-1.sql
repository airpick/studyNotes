# Challenge 06 - 1

# We have two staff members with Staff IDs 1 and 2. 
# We want to give a bonus to the staff member that handled the most payments.

# How many payments did each staff member handle?
# And how much was the total amount processed by each staff member?

SELECT staff_id, COUNT(amount), SUM(amount)
FROM payment
GROUP BY staff_id
ORDER BY COUNT(amount) DESC;