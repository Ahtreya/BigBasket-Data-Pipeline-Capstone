-- (a) INNER JOIN with GROUP BY, Aggregate functions and HAVING filter
SELECT 
    p.category,
    COUNT(o.order_id) AS total_orders,
    SUM(o.amount_inr) AS total_revenue,
    AVG(o.amount_inr) AS avg_revenue
FROM 
    orders o
INNER JOIN 
    products p ON o.product_id = p.product_id
WHERE 
    o.status = 'Delivered'
GROUP BY 
    p.category
HAVING 
    total_revenue > 10000;

-- (b) LEFT JOIN to find least-ordered products (surfaces Premium Face Cream 50g as 0)
SELECT 
    p.product_id,
    p.product_name,
    COUNT(o.order_id) AS total_product_orders
FROM 
    products p
LEFT JOIN 
    orders o ON p.product_id = o.product_id
GROUP BY 
    p.product_id, 
    p.product_name
ORDER BY 
    total_product_orders ASC;
