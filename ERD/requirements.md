# Airbnb Database ERD Specification

## Entities and Attributes
![Airbnb Database ERD Diagram](AirBNB.jpg)
### User
- `user_id` (PK)
- `first_name`
- `last_name`
- `email` (unique)
- `password_hash`
- `phone_number`
- `role` (guest, host, admin)
- `created_at`

### Property
- `property_id` (PK)
- `host_id` (FK → User.user_id)
- `name`
- `description`
- `location`
- `pricepernight`
- `created_at`
- `updated_at`

### Booking
- `booking_id` (PK)
- `property_id` (FK → Property.property_id)
- `user_id` (FK → User.user_id)
- `start_date`
- `end_date`
- `total_price`
- `status` (pending, confirmed, canceled)
- `created_at`

### Payment
- `payment_id` (PK)
- `booking_id` (FK → Booking.booking_id)
- `amount`
- `payment_date`
- `payment_method` (credit_card, paypal, stripe)

### Review
- `review_id` (PK)
- `property_id` (FK → Property.property_id)
- `user_id` (FK → User.user_id)
- `rating` (1–5)
- `comment`
- `created_at`

### Message
- `message_id` (PK)
- `sender_id` (FK → User.user_id)
- `recipient_id` (FK → User.user_id)
- `message_body`
- `sent_at`

## Relationships

- **User → Property**: One-to-Many (a host owns many properties)
- **User → Booking**: One-to-Many (a guest can book many times)
- **Property → Booking**: One-to-Many (a property can be booked many times)
- **Booking → Payment**: One-to-Many (a booking can have multiple payments)
- **User ↔ Property (via Review)**: Many-to-Many (a guest reviews many properties, a property gets reviews from many guests)
- **User ↔ User (via Message)**: Many-to-Many (self-relationship: users send/receive messages)
