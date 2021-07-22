SELECT  properties.*, reservations.*, AVG(property_reviews.rating) AS average_rating 
FROM reservations
JOIN properties ON properties.id = reservations.property_id
JOIN property_reviews ON properties.id = property_reviews.property_id
WHERE reservations.guest_id = 1 
AND reservations.end_date < NOW()::date 
Group BY properties.id, reservations.id
ORDER BY reservations.start_date 
LIMIT 10;

