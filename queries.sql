-- =========================================
-- Query 1: JOIN
-- Retrieve booking information along with
-- Customer name and Vehicle name
-- Concepts: INNER JOIN
-- =========================================

SELECT
    b.booking_id,
    u.name AS customer_name,
    v.name AS vehicle_name,
    b.start_date,
    b.end_date,
    b.booking_status AS status
FROM bookings b
INNER JOIN users u
    ON b.user_id = u.user_id
INNER JOIN vehicles v
    ON b.vehicle_id = v.vehicle_id;

-- =========================================
-- Query 2: EXISTS
-- Find all vehicles that have never been booked
-- Concepts: NOT EXISTS
-- =========================================

SELECT
    v.vehicle_id,
    v.name,
    v.type,
    v.model,
    v.registration_number,
    v.rental_price_per_day AS rental_price,
    v.availability_status AS status
FROM vehicles v
WHERE NOT EXISTS (
    SELECT 1
    FROM bookings b
    WHERE b.vehicle_id = v.vehicle_id
);

-- =========================================
-- Query 3: WHERE
-- Retrieve all available vehicles of a specific type
-- Example: cars
-- Concepts: SELECT, WHERE
-- =========================================

SELECT
    vehicle_id,
    name,
    type,
    model,
    registration_number,
    rental_price_per_day AS rental_price,
    availability_status AS status
FROM vehicles
WHERE availability_status = 'available'
  AND type = 'car';


-- =========================================
-- Query 4: GROUP BY and HAVING
-- Find vehicles with more than 2 bookings
-- Concepts: GROUP BY, HAVING, COUNT
-- =========================================

SELECT
    v.name AS vehicle_name,
    COUNT(b.booking_id) AS total_bookings
FROM vehicles v
INNER JOIN bookings b
    ON v.vehicle_id = b.vehicle_id
GROUP BY v.vehicle_id, v.name
HAVING COUNT(b.booking_id) > 2;
