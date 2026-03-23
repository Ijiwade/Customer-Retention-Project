-- Revenue per customer
-- How much revenue does each customer generate?
-- meaning: total subscription payments made by each customer 
-- output grain: one row per customer 
-- tables: payments 
-- Logic: SUM(amount) GROUP BY customer_id 

SELECT
	c.customer_id, 
    c.plan_type, 
    SUM(p.amount) AS customer_revenue
FROM customers c 
JOIN payments p 
	ON c.customer_id = p.customer_id
GROUP BY c.customer_id, c.plan_type
ORDER BY customer_revenue DESC;
