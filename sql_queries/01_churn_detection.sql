-- Which customers have churned? 
-- meaning: which customers has a sub end_date 
-- output grain: one row per customer 
-- tables: customers amd subscriptions

SELECT
	c.customer_id, 
    c.signup_date, 
    c.plan_type, 
    s.start_date, 
    s.end_date
FROM customers c
LEFT JOIN subscriptions s
	ON c.customer_id = s.customer_id
WHERE s.end_date IS NOT NULL;
