# Customer-Retention-Project
Smaller dataset, heavier thinking. This project is personal and used to train my focus and result interpretation.

40% churn concentrated in Basic plan users, with most cancellations occurring after 30 days, indicating weak long-term value rather than onboarding issues.

Domain: Subscription / Customer Retention
why this? 
* forces me to interpret behaviour
* forces clearer business insghts
* less technical noise than security(last project)

Dataset 
  Customers
  * customer_id
  * signup_date
  * plan_type

  subscriptions
  * customer_id
  * start_date
  * end_date

  payments
  * customer_id
  * payment_date
  * amount

BUSINESS QUESTIONS
1. Churn detection - Which customers have churned
images/Q1.png
Insight:
  * 40% of customers have churned with all users on Basic plan, indicating potential issues with value perception at lower tier
  * Churn occurs early in the customer lifecycle, suggesting onboarding or initial product value may not be strong enough to retain new users

2. Average customer lifetime - How long do customers stay subscribed on average?
images/Q2.png
  Insight:
    * The average customer lifetime is approximately 40 days, including that most users do not remaain subscribed beyond the first billing cycle. 
    * This suggests weak early retention, likely due to insufficient initial value or onboarding experience. 

3. Revenue per customer - How much revenue does each customer generate?
images/Q3.png
   Insight:
     * Dataset shows, Premium plan customers generate higher revenue per customers, as a result of price differences.
     * However, revenue performance should be observed along with retention since higher pricing does not equate to long-term customer value.
  
4. Customer value - Which customers generate the most value over their lifetime?
images/Q4.png
   Insights:
     * The business is retaining some of its most valuable customers, which is positive sign for recurring revenue stability
  
5. Early churn behaviour - Do customers who churn tend to leave early after signing up?
images/Q5.png
   Insights:
     * Most churn occurs after 30 days, with only small portion of users leaving early, indicating that immediate onboarding is not the primary issue
     * This suggests customers initially engage with the product but fail to find sustained value over time, particularly within the Basic plan. 
   
