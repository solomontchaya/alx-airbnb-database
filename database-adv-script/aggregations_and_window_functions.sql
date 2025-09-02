-- ===============================================================
-- 1. Aggregation – Total Bookings per User
-- ===============================================================
SELECT
    u.user_id,
    u.name,
    COUNT(b.booking_id) AS total_bookings
FROM 
    Users u
LEFT JOIN 
    Bookings b ON u.user_id = b.user_id
GROUP BY 
    u.user_id, u.name;

-- ===============================================================
-- 2. Window Function – Rank Properties by Total Bookings
-- ===============================================================
SELECT
    p.property_id,
    p.title,
    COUNT(b.booking_id) AS total_bookings,
    RANK() OVER (ORDER BY COUNT(b.booking_id) DESC) AS booking_rank
FROM 
    Properties p
LEFT JOIN 
    Bookings b ON p.property_id = b.property_id
GROUP BY 
    p.property_id, p.title;
