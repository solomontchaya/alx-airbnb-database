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
    payment pay ON b.booking_id = pay.booking_id;
