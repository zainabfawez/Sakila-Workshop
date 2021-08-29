/* Query 8 
Get the total and average values of rentals per month per year per store */

SELECT SUM(r.amount) as total, AVG(r.amount) 
FROM rental r, payment p, customer c, store s
WHERE r.rental_id=p.rental_id AND r.customer_id=c.customer_id AND c.customer_id=s.store_id
GROUP BY month(r.rental_date), year(r.rental_date), s.store_id;