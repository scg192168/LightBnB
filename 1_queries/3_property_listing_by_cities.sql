/* select id, title, cost_per_night, avg_rating from the properties table for properties in Vancouver
   order the results from lowest to highest cost_per_night
   limit the number of resluts to 10
   show only listings having rating >= 4 starts   */

SELECT properties.id, title, cost_per_night, avg(property_reviews.rating) as average_rating
FROM properties
LEFT JOIN property_reviews ON properties.id = property_id
WHERE city LIKE '%ancouv%'
GROUP BY properties.id
HAVING avg(property_reviews.rating) >= 4
ORDER BY cost_per_night
LIMIT 10;
