-- Average customer lifetime
-- How long do customers stay subscribed on average?
-- meaning: what is the average duration between subscription start and end across customers
-- output grain: one row (overall average)
-- tables: subscriptions
-- logic: 

SELECT
    ROUND(AVG(lifetime_days),0) AS avg_customer_lifetime
FROM (
	SELECT
  		s.customer_id,
  		s.start_date, 
  		s.end_date,
  		(julianday(s.end_date) - julianday(s.start_date)) AS lifetime_days
  	FROM subscriptions s 
  	WHERE s.end_date IS NOT NULL
) AS t;
