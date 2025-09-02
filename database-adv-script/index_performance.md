# Create SQL index statements for high-usage columns in User, Booking, and Property tables
sql_index_statements = """
-- Indexes for User table
CREATE INDEX idx_user_email ON User(email);
CREATE INDEX idx_user_lastname ON User(last_name);

-- Indexes for Booking table
CREATE INDEX idx_booking_userid ON Booking(user_id);
CREATE INDEX idx_booking_propertyid ON Booking(property_id);
CREATE INDEX idx_booking_date ON Booking(booking_date);

-- Indexes for Property table
CREATE INDEX idx_property_location ON Property(location);
CREATE INDEX idx_property_price ON Property(price);
"""

# Create markdown documentation for query performance analysis
index_performance_md = """
# Index Performance Analysis

## Objective
To measure the query performance before and after adding indexes to high-usage columns in the User, Booking, and Property tables.

## Methodology
We used the EXPLAIN command to analyze query execution plans before and after adding indexes.

### Example Queries

#### Before Indexes

