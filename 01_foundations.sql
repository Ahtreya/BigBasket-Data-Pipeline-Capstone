-- 1. SELECT/WHERE (orders in a specific city)
SELECT o.*, c.city 
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
WHERE c.city = 'Bengaluru';

-- 2. DISTINCT (list every distinct category)
SELECT DISTINCT category FROM products;

-- 3. ORDER BY + LIMIT (the 5 highest-value orders by amount_inr)
SELECT * FROM orders 
ORDER BY amount_inr DESC 
LIMIT 5;

-- 4. Alias (AS) (rename an aggregate column)
SELECT status, COUNT(*) AS total_orders 
FROM orders 
GROUP BY status;

-- 5. IN (orders whose payment_mode is in a 2-mode list)
SELECT * FROM orders 
WHERE payment_mode IN ('UPI', 'Credit Card');

-- 6. BETWEEN (orders with amount_inr in a stated range)
SELECT * FROM orders 
WHERE amount_inr BETWEEN 200 AND 800;

-- 7. NOT BETWEEN (orders with amount_inr outside a stated range)
SELECT * FROM orders 
WHERE amount_inr NOT BETWEEN 100 AND 2000;

-- 8. IS NULL (orders with no rating recorded)
SELECT * FROM orders 
WHERE rating IS NULL;
