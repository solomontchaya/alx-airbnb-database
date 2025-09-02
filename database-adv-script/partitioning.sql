-- Step 1: Create a new partitioned Booking table
CREATE TABLE booking_partitioned (
    booking_id SERIAL PRIMARY KEY,
    user_id INT,
    property_id INT,
    start_date DATE,
    end_date DATE,
    booking_status VARCHAR(50)
) PARTITION BY RANGE (start_date);

-- Step 2: Create partitions by year
CREATE TABLE booking_2022 PARTITION OF booking_partitioned
    FOR VALUES FROM ('2022-01-01') TO ('2023-01-01');

CREATE TABLE booking_2023 PARTITION OF booking_partitioned
    FOR VALUES FROM ('2023-01-01') TO ('2024-01-01');

CREATE TABLE booking_2024 PARTITION OF booking_partitioned
    FOR VALUES FROM ('2024-01-01') TO ('2025-01-01');

-- Step 3: Example query to test performance
-- This query will only scan the relevant partition
EXPLAIN ANALYZE
SELECT * FROMbBooking_partitioned
WHERE start_date BETWEEN '2023-06-01' AND '2023-06-30';
