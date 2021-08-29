/* Query 6 
Find all the film categories in which there are between 55 and 65 films. Return the names of these categories
and the number of films per category, sorted by the number of films. If there are no categories between 55 and
65, return the highest available counts */



SELECT c.name ,count (fc.category_id) as nb
from film f, catergory c, film_category fc
where f.film_id=fc.film_id and c.category=fc.category_id
GROUP by  c.name
having nb between 55 and 65 
CASE
	WHEN nb=0 THEN MAX(nb)
END