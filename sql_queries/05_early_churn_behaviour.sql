-- Early Churn Behaviour 
-- Do customers who churn tend to leave early after signing up? 
-- Explanation: How long after signing up do churned customers cancel their subscription 
-- Output Grain: one row per churned customer
-- Tables needed: customers and subscription 
-- Logic: calculate difference + define early benchmark 


SELECT
	customer_id, 
    plan_type, 
    lifetime_days,
    CASE 
    	WHEN lifetime_days <= 30 
    	THEN 'Early' 
        ELSE 'Late Churn' 
    END AS Churn_type
FROM (
	SELECT 
  		c.customer_id,
  		c.plan_type,
  		(julianday(s.end_date) - julianday(s.start_date)) AS lifetime_days
	FROM customers c 
	LEFT JOIN subscriptions s 
		ON c.customer_id = s.customer_id
	WHERE s.end_date IS NOT NULL 
) AS t

