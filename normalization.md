# Airbnb Database Normalization (3NF)

## Step 1: First Normal Form (1NF)

**Rule:**
- Eliminate repeating groups.
- Ensure each field contains atomic values.

**Analysis:**
- All attributes are atomic (e.g., `first_name`, `last_name`).
- No multivalued fields.
- Every table has a primary key.

---

## Step 2: Second Normal Form (2NF)

**Rule:**
- Already in 1NF.
- All non-key attributes must depend on the whole primary key.

**Analysis:**
- No composite primary keys are used; all tables use UUIDs as PK.
- Attributes in each table depend entirely on their respective PK.
- *Example:* `start_date`, `end_date`, `total_price` in `Booking` depend fully on `booking_id`.

---

## Step 3: Third Normal Form (3NF)

**Rule:**
- Already in 2NF.
- No transitive dependencies: non-key attributes must not depend on other non-key attributes.

### Analysis by Table

#### User Table
- All attributes depend directly on `user_id`. 

#### Property Table
- Attributes (`name`, `description`, `location`, `pricepernight`) depend on `property_id`.
- `host_id` is FK to `User`. 

#### Booking Table
- `total_price` can be derived from (`end_date` - `start_date`) × `Property.pricepernight`.
- To comply with 3NF, remove `total_price` from the table or compute dynamically.

#### Payment Table
- All fields depend on `payment_id`. 

#### Review Table
- Attributes depend on `review_id`. 

#### Message Table
- Attributes depend on `message_id`. 
