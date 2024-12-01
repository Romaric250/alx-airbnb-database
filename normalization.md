# Normalization to Third Normal Form (3NF)

## Objective
The goal is to ensure the database schema adheres to the principles of normalization and is in Third Normal Form (3NF). This reduces redundancy, improves data integrity, and enhances maintainability.

---

## Steps to Normalize the Schema

### 1. **Understanding 1NF**
- **Requirement:** All attributes must contain atomic values, and there must be a unique identifier (primary key) for each record.
- **Current Status:** The schema already meets 1NF as all attributes are atomic, and primary keys are defined for all entities.

---

### 2. **Ensuring 2NF**
- **Requirement:** All attributes must depend on the whole primary key (no partial dependency).
- **Current Status:** All tables either have a single-column primary key or attributes that fully depend on composite keys (if applicable).
- **Action Taken:** None needed; the schema meets 2NF.

---

### 3. **Achieving 3NF**
- **Requirement:** All attributes must be directly dependent on the primary key and not on any non-prime attribute (no transitive dependency).

#### Review of Potential Violations:
1. **`Property` Table:**
   - **Issue:** None identified. All attributes depend on the primary key (`property_id`).

2. **`Booking` Table:**
   - **Issue:** None identified. All attributes depend directly on `booking_id`.

3. **`Payment` Table:**
   - **Issue:** None identified. All attributes depend directly on `payment_id`.

4. **`Review` Table:**
   - **Issue:** None identified. All attributes depend on `review_id`.

5. **`Message` Table:**
   - **Issue:** None identified. All attributes depend directly on `message_id`.

6. **`User` Table:**
   - **Issue:** None identified. All attributes depend directly on `user_id`.

#### Key Adjustments (if applicable):
- No structural changes were necessary as all tables comply with 3NF.

---

## Explanation of Normalization Steps

1. **Analyzed Each Table for Atomicity (1NF):**
   - Verified that each attribute contains atomic values.
   - Ensured no repeating groups or arrays.

2. **Checked Dependencies (2NF):**
   - Confirmed that no partial dependencies exist in tables with composite keys.
   - Verified that every non-primary key attribute depends on the entire primary key.

3. **Eliminated Transitive Dependencies (3NF):**
   - Ensured no non-primary attribute is dependent on another non-primary attribute.

---

## Conclusion
The database schema adheres to the principles of 3NF. It avoids redundancy, ensures data integrity, and maintains scalability. No further adjustments are needed.
