/* Query 9
Get the top 3 customers who rented the highest number of movies within a given year */

SELECT * 
FROM customer c, rental r
WHERE c.customer_id=r.customer_id AND EXTRACT(YEAR FROM r.rental_date)= "2020"
GROUP BY c.customer_id
ORDER BY COUNT(c.customer_id) DESC LIMIT 3;
