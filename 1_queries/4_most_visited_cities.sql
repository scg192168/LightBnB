/* get the list of the most visited cities
   select the name of the city and the number of reservations for that city
   order results from highest to lowest number of reservations */

SELECT properties.city, count(reservations) as total_reservations
FROM reservations
JOIN properties ON property_id = properties.id
GROUP BY properties.city
ORDER BY total_reservations DESC;