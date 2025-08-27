-- ==============================================
-- Users
-- ==============================================
INSERT INTO Users (user_id, first_name, last_name, email, password_hash, phone_number, role)
VALUES 
  ('11111111-1111-1111-1111-111111111111', 'Alice', 'Johnson', 'alice@example.com', 'hashed_pwd_1', '255123456789', 'guest'),
  ('22222222-2222-2222-2222-222222222222', 'Bob', 'Smith', 'bob@example.com', 'hashed_pwd_2', '255987654321', 'host'),
  ('33333333-3333-3333-3333-333333333333', 'Charlie', 'Brown', 'charlie@example.com', 'hashed_pwd_3', NULL, 'guest'),
  ('44444444-4444-4444-4444-444444444444', 'Diana', 'Prince', 'diana@example.com', 'hashed_pwd_4', '255456123789', 'host'),
  ('55555555-5555-5555-5555-555555555555', 'Admin', 'User', 'admin@example.com', 'hashed_pwd_admin', NULL, 'admin');

-- ==============================================
-- Properties
-- ==============================================
INSERT INTO Properties (property_id, host_id, name, description, location, pricepernight)
VALUES
  ('aaaaaaa1-aaaa-aaaa-aaaa-aaaaaaaaaaa1', '22222222-2222-2222-2222-222222222222', 'Beach House', 'A cozy beach house with ocean view.', 'Dar es Salaam, TZ', 120.00),
  ('aaaaaaa2-aaaa-aaaa-aaaa-aaaaaaaaaaa2', '22222222-2222-2222-2222-222222222222', 'City Apartment', 'Modern apartment in downtown.', 'Dar es Salaam, TZ', 80.00),
  ('aaaaaaa3-aaaa-aaaa-aaaa-aaaaaaaaaaa3', '44444444-4444-4444-4444-444444444444', 'Mountain Cabin', 'Secluded cabin in the mountains.', 'Mbeya, TZ', 150.00),
  ('aaaaaaa4-aaaa-aaaa-aaaa-aaaaaaaaaaa4', '44444444-4444-4444-4444-444444444444', 'Lake House', 'Peaceful lake house with private dock.', 'Iringa, TZ', 130.00);

-- ==============================================
-- Bookings
-- ==============================================
INSERT INTO Bookings (booking_id, property_id, user_id, start_date, end_date, status)
VALUES
  ('bbbbbbb1-bbbb-bbbb-bbbb-bbbbbbbbbbb1', 'aaaaaaa1-aaaa-aaaa-aaaa-aaaaaaaaaaa1', '11111111-1111-1111-1111-111111111111', '2025-09-01', '2025-09-05', 'confirmed'),
  ('bbbbbbb2-bbbb-bbbb-bbbb-bbbbbbbbbbb2', 'aaaaaaa2-aaaa-aaaa-aaaa-aaaaaaaaaaa2', '33333333-3333-3333-3333-333333333333', '2025-09-10', '2025-09-12', 'pending'),
  ('bbbbbbb3-bbbb-bbbb-bbbb-bbbbbbbbbbb3', 'aaaaaaa3-aaaa-aaaa-aaaa-aaaaaaaaaaa3', '11111111-1111-1111-1111-111111111111', '2025-10-01', '2025-10-07', 'confirmed');

-- ==============================================
-- Payments
-- ==============================================
INSERT INTO Payments (payment_id, booking_id, amount, payment_method)
VALUES
  ('ccccccc1-cccc-cccc-cccc-ccccccccccc1', 'bbbbbbb1-bbbb-bbbb-bbbb-bbbbbbbbbbb1', 480.00, 'credit_card'),
  ('ccccccc2-cccc-cccc-cccc-ccccccccccc2', 'bbbbbbb2-bbbb-bbbb-bbbb-bbbbbbbbbbb2', 160.00, 'paypal'),
  ('ccccccc3-cccc-cccc-cccc-ccccccccccc3', 'bbbbbbb3-bbbb-bbbb-bbbb-bbbbbbbbbbb3', 1050.00, 'stripe');

-- ==============================================
-- Reviews
-- ==============================================
INSERT INTO Reviews (review_id, property_id, user_id, rating, comment)
VALUES
  ('ddddddd1-dddd-dddd-dddd-ddddddddddd1', 'aaaaaaa1-aaaa-aaaa-aaaa-aaaaaaaaaaa1', '11111111-1111-1111-1111-111111111111', 5, 'Amazing stay! Beautiful view and very cozy.'),
  ('ddddddd2-dddd-dddd-dddd-ddddddddddd2', 'aaaaaaa2-aaaa-aaaa-aaaa-aaaaaaaaaaa2', '33333333-3333-3333-3333-333333333333', 4, 'Nice apartment, but a bit noisy at night.');

-- ==============================================
-- Messages
-- ==============================================
INSERT INTO Messages (message_id, sender_id, recipient_id, message_body)
VALUES
  ('eeeeeee1-eeee-eeee-eeee-eeeeeeeeeee1', '11111111-1111-1111-1111-111111111111', '22222222-2222-2222-2222-222222222222', 'Hi, I would like to check-in early.'),
  ('eeeeeee2-eeee-eeee-eeee-eeeeeeeeeee2', '22222222-2222-2222-2222-222222222222', '11111111-1111-1111-1111-111111111111', 'Sure! Early check-in is fine.'),
  ('eeeeeee3-eeee-eeee-eeee-eeeeeeeeeee3', '33333333-3333-3333-3333-333333333333', '44444444-4444-4444-4444-444444444444', 'Is the mountain cabin available next month?');
