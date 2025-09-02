# Database Performance Monitoring and Refinement

**Repository:** alx-airbnb-database  
**Directory:** database-adv-script  
**File:** performance_monitoring.md  

## Objective
Continuously monitor and refine database performance by analyzing query execution plans and making schema adjustments to ensure efficient query execution.

---

## 1. Monitoring Queries

We used `EXPLAIN`, `EXPLAIN ANALYZE`, and `SHOW PROFILE` (for MySQL) to evaluate frequently used queries.

---

### Example Query 1: Fetch Available Properties
```sql
EXPLAIN ANALYZE
SELECT p.id, p.name, p.location, p.price
FROM properties p
LEFT JOIN bookings b ON p.id = b.property_id
WHERE (b.check_out < CURDATE() OR b.check_in > CURDATE() OR b.id IS NULL)
  AND p.location = 'Lilongwe'
ORDER BY p.price ASC
LIMIT 20;
