-- =========================================
-- Reset tables
-- =========================================
TRUNCATE TABLE bookings RESTART IDENTITY CASCADE;
TRUNCATE TABLE vehicles RESTART IDENTITY CASCADE;
TRUNCATE TABLE users RESTART IDENTITY CASCADE;

-- =========================================
-- USERS (password is REQUIRED by schema)
-- =========================================
INSERT INTO users (user_id, role, name, email, password, phone) VALUES
(1, 'Customer', 'Alice', 'alice@example.com', 'alice123', '1234567890'),
(2, 'Admin', 'Bob', 'bob@example.com', 'bob123', '0987654321'),
(3, 'Customer', 'Charlie', 'charlie@example.com', 'charlie123', '1122334455');

-- =========================================
-- VEHICLES (schema field names)
-- =========================================
INSERT INTO vehicles (
    vehicle_id, name, type, model,
    registration_number,
    rental_price_per_day,
    availability_status
) VALUES
(1, 'Toyota Corolla', 'car', '2022', 'ABC-123', 50, 'available'),
(2, 'Honda Civic', 'car', '2021', 'DEF-456', 60, 'rented'),
(3, 'Yamaha R15', 'bike', '2023', 'GHI-789', 30, 'available'),
(4, 'Ford F-150', 'truck', '2020', 'JKL-012', 100, 'maintenance');

-- =========================================
-- BOOKINGS (schema field names)
-- =========================================
INSERT INTO bookings (
    booking_id, user_id, vehicle_id,
    start_date, end_date,
    booking_status, total_cost
) VALUES
(1, 1, 2, '2023-10-01', '2023-10-05', 'completed', 240),
(2, 1, 2, '2023-11-01', '2023-11-03', 'completed', 120),
(3, 3, 2, '2023-12-01', '2023-12-02', 'confirmed', 60),
(4, 1, 1, '2023-12-10', '2023-12-12', 'pending', 100);