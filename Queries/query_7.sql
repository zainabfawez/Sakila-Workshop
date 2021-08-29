/* Query 7 
 Find the names (first and last) of all the actors and costumers whose first name is the same as the first name of
the actor with ID 8. Do not return the actor with ID 8 himself. Note that you cannot use the name of the actor
with ID 8 as a constant (only the ID). There is more than one way to solve this question, but you need to
provide only one solution*/

SELECT  a.first_name, a.last_name, c.first_name, c.last_name
FROM actor a, customer c
WHERE a.actor_id<>8 And a.first_name = (SELECT first_name FROM actor where actor_id = 8) 
	AND c.first_name = (SELECT first_name FROM actor where actor_id = 8);