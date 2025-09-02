# Optimization Report

## Objective
Refactor complex queries to improve performance in the Airbnb database system.

## Initial Query
The initial query retrieves all bookings along with user, property, and payment details using multiple JOINs.

## Performance Analysis
Using EXPLAIN, the initial query showed full table scans and high cost due to lack of indexes and unnecessary column retrieval.

## Optimization Approach

### 1. Indexing
Indexes were created on frequently joined and filtered columns to speed up lookups:
- `Booking(user_id)`
- `Booking(property_id)`
- `Booking(booking_id)`
- `User(user_id)`
- `Property(property_id)`
- `Payment(booking_id)`

### 2. Column Reduction
Only necessary columns were selected to reduce I/O and memory usage.

### 3. Join Optimization
Used `LEFT JOIN` for the `Payment` table to avoid excluding bookings without payments.

### 4. Query Refactoring
The query was rewritten to leverage indexes and reduce complexity.

## Result
The optimized query showed reduced execution time and improved performance metrics in EXPLAIN output.
