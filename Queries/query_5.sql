/*Query 5
Return the first and last names of actors who played in a film involving a “Crocodile” and a “Shark”, along with
the release year of the movie, sorted by the actors’ last names.*/


SELECT a.first_name, a.last_name, f.release_year
FROM actor a, film f, film_actor fa
WHERE fa.actor_id=a.actor_id
AND fa.film_id=f.film_id 
AND (f.description LIKE ('%Crocodile%')
or f.description LIKE ( '%shark%'))
ORDER BY a.last_name;