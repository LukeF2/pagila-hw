/*
 * Use a JOIN to list the total paid by each customer.
 * List the customers alphabetically by last name.
 * Use tables payment and customer.
 */

SELECT p.customer_id, c.first_name, c.last_name, sum(p.amount) AS sum
FROM payment p JOIN customer c ON p.customer_id = c.customer_id
GROUP BY p.customer_id, c.first_name, c.last_name
ORDER BY c.last_name;
