# Challenge 05 - 1
# How many panment transactions were greater than $5.00? 

SELECT COUNT (amount) 
FROM payment
WHERE amount > 5.00;