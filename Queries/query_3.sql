/*Query 3
What are the top 3 countries from which customers are originating?*/

SELECT co.country
FROM country co , city ci, address ad, customer cu
WHERE co.country_id=ci.country_id AND ci.city_id=ad.city_id AND ad.address_id=cu.customer_id
Group By co.country_id
ORDER BY count(cu.customer_id)LIMIT 3 ;