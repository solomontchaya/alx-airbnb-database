-- ==============================================
-- 1. INNER JOIN – Bookings and Users
-- ==============================================
SELECT
    b.booking_id,
    b.start_date,
    b.end_date,
    u.user_id,
    u.name,
    u.email
FROM 
    Bookings b
INNER JOIN 
    Users u ON b.user_id = u.user_id;

-- ==============================================
-- 2. LEFT JOIN – Properties and Reviews
-- ==============================================
SELECT
    p.property_id,
    p.title,
    p.location,
    r.review_id,
    r.rating,
    r.comment
FROM 
    Properties p
LEFT JOIN 
    Reviews r ON p.property_id = r.property_id;

-- ==============================================
-- 3. FULL OUTER JOIN – Users and Bookings
-- ==============================================
SELECT
    u.user_id,
    u.name,
    b.booking_id,
    b.booking_date,
    b.property_id
FROM 
    Users u
FULL OUTER JOIN 
    Bookings b ON u.user_id = b.user_id;


