# Entities and Attributes

### **1. User**
- **Attributes:**
  - `user_id`: Primary Key, UUID, Indexed
  - `first_name`: `VARCHAR`, NOT NULL
  - `last_name`: `VARCHAR`, NOT NULL
  - `email`: `VARCHAR`, UNIQUE, NOT NULL
  - `password_hash`: `VARCHAR`, NOT NULL
  - `phone_number`: `VARCHAR`, NULL
  - `role`: `ENUM (guest, host, admin)`, NOT NULL
  - `created_at`: `TIMESTAMP`, DEFAULT CURRENT_TIMESTAMP

---

### **2. Property**
- **Attributes:**
  - `property_id`: Primary Key, UUID, Indexed
  - `host_id`: Foreign Key, references `User(user_id)`
  - `name`: `VARCHAR`, NOT NULL
  - `description`: `TEXT`, NOT NULL
  - `location`: `VARCHAR`, NOT NULL
  - `price_per_night`: `DECIMAL`, NOT NULL
  - `created_at`: `TIMESTAMP`, DEFAULT CURRENT_TIMESTAMP
  - `updated_at`: `TIMESTAMP`, ON UPDATE CURRENT_TIMESTAMP

---

### **3. Booking**
- **Attributes:**
  - `booking_id`: Primary Key, UUID, Indexed
  - `property_id`: Foreign Key, references `Property(property_id)`
  - `user_id`: Foreign Key, references `User(user_id)`
  - `start_date`: `DATE`, NOT NULL
  - `end_date`: `DATE`, NOT NULL
  - `total_price`: `DECIMAL`, NOT NULL
  - `status`: `ENUM (pending, confirmed, canceled)`, NOT NULL
  - `created_at`: `TIMESTAMP`, DEFAULT CURRENT_TIMESTAMP

---

### **4. Payment**
- **Attributes:**
  - `payment_id`: Primary Key, UUID, Indexed
  - `booking_id`: Foreign Key, references `Booking(booking_id)`
  - `amount`: `DECIMAL`, NOT NULL
  - `payment_date`: `TIMESTAMP`, DEFAULT CURRENT_TIMESTAMP
  - `payment_method`: `ENUM (credit_card, paypal, stripe)`, NOT NULL

---

### **5. Review**
- **Attributes:**
  - `review_id`: Primary Key, UUID, Indexed
  - `property_id`: Foreign Key, references `Property(property_id)`
  - `user_id`: Foreign Key, references `User(user_id)`
  - `rating`: `INTEGER`, CHECK: `rating >= 1 AND rating <= 5`, NOT NULL
  - `comment`: `TEXT`, NOT NULL
  - `created_at`: `TIMESTAMP`, DEFAULT CURRENT_TIMESTAMP

---

### **6. Message**
- **Attributes:**
  - `message_id`: Primary Key, UUID, Indexed
  - `sender_id`: Foreign Key, references `User(user_id)`
  - `recipient_id`: Foreign Key, references `User(user_id)`
  - `message_body`: `TEXT`, NOT NULL
  - `sent_at`: `TIMESTAMP`, DEFAULT CURRENT_TIMESTAMP

---

# Relationships Between Entities

### **1. User to Property**
- **Relationship:** One-to-Many
- **Details:** A `User` (with the role `host`) can own multiple `Property` records.
- `User(user_id)` ↔ `Property(host_id)`

---

### **2. User to Booking**
- **Relationship:** One-to-Many
- **Details:** A `User` (with the role `guest`) can create multiple `Booking` records.
- `User(user_id)` ↔ `Booking(user_id)`

---

### **3. Property to Booking**
- **Relationship:** One-to-Many
- **Details:** A `Property` can have multiple associated `Booking` records.
- `Property(property_id)` ↔ `Booking(property_id)`

---

### **4. Booking to Payment**
- **Relationship:** One-to-One
- **Details:** Each `Booking` can have one associated `Payment` record.
- `Booking(booking_id)` ↔ `Payment(booking_id)`

---

### **5. Property to Review**
- **Relationship:** One-to-Many
- **Details:** A `Property` can have multiple associated `Review` records.
- `Property(property_id)` ↔ `Review(property_id)`

---

### **6. User to Review**
- **Relationship:** One-to-Many
- **Details:** A `User` can create multiple `Review` records for different `Property` records.
- `User(user_id)` ↔ `Review(user_id)`

---

### **7. User to Message**
- **Relationship:** Many-to-Many
- **Details:** Users can send messages to one another, with each message involving a sender and a recipient.
- `User(user_id)` ↔ `Message(sender_id)`  
- `User(user_id)` ↔ `Message(recipient_id)`

---
