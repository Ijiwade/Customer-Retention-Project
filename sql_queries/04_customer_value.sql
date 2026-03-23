-- Customer Value
-- which customers generate the most value over their lifetime?
-- meaning: which customers generate the most total revenue over the time they remain subscribed? 
-- output grain: one row per customer 
-- tables: all tables
-- logic: customer_revenue, sub lifetime and interpretation 

SELECT
	c.customer_id, 
    c.plan_type, 
    COALESCE(SUM(p.amount),0) AS customer_revenue, 
    s.start_date, 
    s.end_date, 
    CASE 
    	WHEN s.end_date IS NULL 
        THEN 'Active' ELSE 'Churned' 
        END AS customer_status
FROM customers c 
LEFT JOIN payments p 
	ON p.customer_id = c.customer_id 
LEFT JOIN subscriptions s 
	ON s.customer_id = c.customer_id
GROUP BY c.customer_id, c.plan_type, s.start_date, s.end_date
ORDER BY customer_revenue DESC;
