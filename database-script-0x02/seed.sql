-- Insert sample data into User table
INSERT INTO User (user_id, first_name, last_name, email, password_hash, phone_number, role, created_at)
VALUES
    ('123e4567-e89b-12d3-a456-426614174000', 'John', 'Doe', 'john.doe@example.com', 'hashedpassword123', '123-456-7890', 'guest', DEFAULT),
    ('123e4567-e89b-12d3-a456-426614174001', 'Jane', 'Smith', 'jane.smith@example.com', 'hashedpassword456', '987-654-3210', 'host', DEFAULT),
    ('123e4567-e89b-12d3-a456-426614174002', 'Admin', 'User', 'admin@example.com', 'hashedpassword789', NULL, 'admin', DEFAULT);

-- Insert sample data into Property table
INSERT INTO Property (property_id, host_id, name, description, location, pricepernight, created_at, updated_at)
VALUES
    ('123e4567-e89b-12d3-a456-426614174100', '123e4567-e89b-12d3-a456-426614174001', 'Cozy Apartment', 'A cozy apartment in the heart of the city.', 'New York, NY', 150.00, DEFAULT, DEFAULT),
    ('123e4567-e89b-12d3-a456-426614174101', '123e4567-e89b-12d3-a456-426614174001', 'Beachfront Villa', 'A luxurious villa with a stunning ocean view.', 'Malibu, CA', 500.00, DEFAULT, DEFAULT);

-- Insert sample data into Booking table
INSERT INTO Booking (booking_id, property_id, user_id, start_date, end_date, total_price, status, created_at)
VALUES
    ('123e4567-e89b-12d3-a456-426614174200', '123e4567-e89b-12d3-a456-426614174100', '123e4567-e89b-12d3-a456-426614174000', '2024-12-15', '2024-12-20', 750.00, 'confirmed', DEFAULT),
    ('123e4567-e89b-12d3-a456-426614174201', '123e4567-e89b-12d3-a456-426614174101', '123e4567-e89b-12d3-a456-426614174000', '2025-01-05', '2025-01-10', 2500.00, 'pending', DEFAULT);

-- Insert sample data into Payment table
INSERT INTO Payment (payment_id, booking_id, amount, payment_date, payment_method)
VALUES
    ('123e4567-e89b-12d3-a456-426614174300', '123e4567-e89b-12d3-a456-426614174200', 750.00, DEFAULT, 'credit_card');

-- Insert sample data into Review table
INSERT INTO Review (review_id, property_id, user_id, rating, comment, created_at)
VALUES
    ('123e4567-e89b-12d3-a456-426614174400', '123e4567-e89b-12d3-a456-426614174100', '123e4567-e89b-12d3-a456-426614174000', 5, 'Amazing stay! The apartment was clean and well-located.', DEFAULT),
    ('123e4567-e89b-12d3-a456-426614174401', '123e4567-e89b-12d3-a456-426614174101', '123e4567-e89b-12d3-a456-426614174000', 4, 'Beautiful villa, but a bit pricey.', DEFAULT);

-- Insert sample data into Message table
INSERT INTO Message (message_id, sender_id, recipient_id, message_body, sent_at)
VALUES
    ('123e4567-e89b-12d3-a456-426614174500', '123e4567-e89b-12d3-a456-426614174000', '123e4567-e89b-12d3-a456-426614174001', 'Hi, is the villa available for my dates?', DEFAULT),
    ('123e4567-e89b-12d3-a456-426614174501', '123e4567-e89b-12d3-a456-426614174001', '123e4567-e89b-12d3-a456-426614174000', 'Yes, the villa is available. Let me know if you have any questions!', DEFAULT);
