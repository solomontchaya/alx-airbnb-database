-- ===============================================================
-- Indexes to optimize queries for User, Booking, and Property tables
-- ===============================================================

-- Users table
CREATE INDEX idx_users_email ON Users(email);

-- Bookings table
CREATE INDEX idx_bookings_property ON Bookings(property_id);
CREATE INDEX idx_bookings_user ON Bookings(user_id);
CREATE INDEX idx_bookings_date ON Bookings(booking_date);

-- Properties table
CREATE INDEX idx_properties_title ON Properties(title);

-- ===============================================================
-- Example queries to test performance using EXPLAIN ANALYZE
-- ===============================================================

-- Test query on Bookings by property
EXPLAIN ANALYZE
SELECT p.title, COUNT(b.booking_id) AS total_bookings
FROM Properties p
LEFT JOIN Bookings b ON p.property_id = b.property_id
GROUP BY p.property_id, p.title
ORDER BY total_bookings DESC;

-- Test query on Users by email
EXPLAIN ANALYZE
SELECT * FROM Users WHERE email = 'example@example.com';

-- Test query on Bookings by booking_date
EXPLAIN ANALYZE
SELECT * FROM Bookings WHERE booking_date >= '2025-01-01';
