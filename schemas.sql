-- =========================================
-- Vehicle Rental System - Schema
-- =========================================

-- Drop tables if they already exist (safe reset)
DROP TABLE IF EXISTS bookings CASCADE;
DROP TABLE IF EXISTS vehicles CASCADE;
DROP TABLE IF EXISTS users CASCADE;

-- =========================================
-- USERS TABLE
-- =========================================
CREATE TABLE users (
    user_id SERIAL PRIMARY KEY,
    role VARCHAR(20) NOT NULL,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(150) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    phone VARCHAR(20)
);

-- =========================================
-- VEHICLES TABLE
-- =========================================
CREATE TABLE vehicles (
    vehicle_id SERIAL PRIMARY KEY,
    name VARCHAR(150) NOT NULL,
    type VARCHAR(20) NOT NULL, -- Enum: car | bike | truck
    model VARCHAR(50) NOT NULL,
    registration_number VARCHAR(50) UNIQUE NOT NULL,
    rental_price_per_day NUMERIC(10,2) NOT NULL,
    availability_status VARCHAR(20) NOT NULL
        CHECK (availability_status IN ('available', 'rented', 'maintenance'))
);

-- =========================================
-- BOOKINGS TABLE
-- =========================================
CREATE TABLE bookings (
    booking_id SERIAL PRIMARY KEY,
    user_id INT NOT NULL,
    vehicle_id INT NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    booking_status VARCHAR(20) NOT NULL
        CHECK (booking_status IN ('pending', 'confirmed', 'completed', 'cancelled')),
    total_cost NUMERIC(10,2) NOT NULL,

    -- Foreign Keys
    CONSTRAINT fk_user
        FOREIGN KEY (user_id)
        REFERENCES users(user_id)
        ON DELETE CASCADE,

    CONSTRAINT fk_vehicle
        FOREIGN KEY (vehicle_id)
        REFERENCES vehicles(vehicle_id)
        ON DELETE CASCADE,

    -- Date validation
    CONSTRAINT chk_dates
        CHECK (end_date >= start_date)
);