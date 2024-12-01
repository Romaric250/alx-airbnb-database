# Optimizing Query Performance with Indexes

## Objective
To improve query performance by identifying high-usage columns in the `User`, `Booking`, and `Property` tables and creating appropriate indexes. Performance is measured using `EXPLAIN` or `ANALYZE`.

---

## Step 1: Identify High-Usage Columns

Based on typical query patterns:
- **`User` Table**:
  - `email`: Frequently used in login and search operations (`WHERE` clause).
  - `user_id`: Commonly used in `JOIN` clauses with `Booking` and `Message`.

- **`Booking` Table**:
  - `user_id`: Frequently used in `JOIN` clauses with `User`.
  - `property_id`: Frequently used in `JOIN` clauses with `Property`.
  - `start_date`: Often used in date-range searches (`WHERE` clause).

- **`Property` Table**:
  - `property_id`: Used in `JOIN` clauses with `Booking` and `Review`.
  - `location`: Used in location-based searches (`WHERE` clause).