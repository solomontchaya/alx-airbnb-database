-- ===============================================================
-- Query with WHERE and AND conditions, and EXPLAIN for performance
-- ===============================================================

EXPLAIN
SELECT
    b.booking_id,
    b.booking_date,
    u.user_id,
    u.first_name,
    u.last_name,
    p.property_id,
    p.price_per_night,
    pay.payment_id,
    pay.amount,
    pay.payment_date
FROM 
    booking b
JOIN 
    user u ON b.user_id = u.user_id
JOIN 
    property p ON b.property_id = p.property_id
JOIN 
    payment pay ON b.booking_id = pay.booking_id
WHERE 
    b.booking_date >= '2025-01-01'   -- filter bookings from Jan 1, 2025
    AND p.price_per_night <= 200     -- filter properties with price <= 200
ORDER BY 
    b.booking_date DESC;             -- order by latest bookings first
