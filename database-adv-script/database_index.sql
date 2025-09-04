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
