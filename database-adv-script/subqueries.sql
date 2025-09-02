-- =================================================================
-- 1. Non-Correlated Subquery – Properties with Average Rating > 4.0
-- =================================================================
SELECT
    p.property_id,
    p.title,
    p.location
FROM 
    properties p
WHERE 
    p.property_id IN (
        SELECT 
            r.property_id
        FROM 
            reviews r
        GROUP BY 
            r.property_id
        HAVING 
            AVG(r.rating) > 4.0
    );

-- ================================================================
-- 2. Correlated Subquery – Users with More Than 3 Bookings
-- ================================================================
SELECT
    u.user_id,
    u.name,
    u.email
FROM 
    users u
WHERE 
    (
        SELECT 
            COUNT(*) 
        FROM 
            bookings b 
        WHERE 
            b.user_id = u.user_id
    ) > 3;

-- ===============================================================
-- 3. Correlated Subquery – Active Users
-- ===============================================================
SELECT
    u.user_id,
    u.name,
    u.email
FROM 
    users u
WHERE 
    (
        SELECT 
            COUNT(*) 
        FROM 
            bookings b 
        WHERE 
            b.user_id = u.user_id
    ) > 3;

