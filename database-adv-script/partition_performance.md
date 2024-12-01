# Partitioning Performance Testing Report

## Objective:
To test and evaluate the performance improvements of queries on a partitioned `Booking` table. The `Booking` table is partitioned based on the `start_date` column, with each partition corresponding to a specific year. The goal is to observe performance improvements when fetching bookings for a date range.

---

## Methodology

### Step 1: Create the Partitioned `Booking` Table

The `Booking` table is partitioned by the `start_date` column using the `RANGE` partitioning method. The table is divided into yearly partitions, with each partition containing bookings for a specific year.

### Step 2: Query Performance Testing Before Partitioning

Before implementing partitioning, we perform the following query:

```sql
-- Query to fetch bookings for a specific date range (before partitioning)
SELECT 
    booking_id, start_date, end_date, total_price
FROM 
    Booking
WHERE 
    start_date BETWEEN '2023-01-01' AND '2023-12-31';
