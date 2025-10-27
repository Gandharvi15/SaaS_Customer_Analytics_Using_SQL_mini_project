-- 1. Total Number of Customers
-- Find the total number of unique customers.
select count(distinct customer_id) as total_no_cust
from subscriptions;

/* Conclusion :- The query shows that there are 168 unique customers in the subscriptions table — 
meaning 168 distinct individuals or accounts have active or recorded subscriptions.*/


-- 2. Active vs. Churned Customers
-- Identify how many customers are still active vs. canceled.
select
 sum(case When churn_date is null then 1 else 0 end) as total_active_cust,
 sum(case When churn_date is not null then 1 else 0 end) as total_canceled_cust
from customers;

/*Conclusion :- All 1,000 customers have churned, and there are no active customers remaining.*/


--  3.Monthly Recurring Revenue (MRR)
 SELECT sum(r.monthly_fee) AS total_MRR
FROM revenue as r
join customers as c
on r.customer_id=c.customer_id 
WHERE churn_date IS NULL;
/*Concluison :- The average Customer Acquisition Cost (CAC) is 110.11.
This means, on average, the company spends $110.11 to acquire each new customer.*/




-- 4.Average Customer Lifetime (in months)
-- Find average number of months customers stayed subscribed.
SELECT 
    AVG(TIMESTAMPDIFF(MONTH, signup_date, churn_date)) AS avg_customer_lifetime_months
FROM customers
WHERE churn_date IS NOT NULL;
/*The average customer lifetime is 4.87 months.
This means that, on average, customers stay subscribed for around 5 months before canceling their service.*/



-- 5.Customer Acquisition Cost (CAC)
-- Find average acquisition cost across all customers.
select avg(acquisition_cost)
from customers;
/*Conclusion :- The average Customer Acquisition Cost (CAC) is 110.11.
This means, on average, the company spends $110.11 to acquire each new customer.*/



-- 6.Lifetime Value (LTV) by Plan Type
-- Estimate average LTV for each subscription plan.
SELECT 
    plan_type,
    ROUND(AVG(c.monthly_fee * TIMESTAMPDIFF(MONTH, signup_date, churn_date)), 2) AS avg_LTV
FROM customers as c
JOIN revenue as r
    ON c.customer_id = r.customer_id
WHERE churn_date IS NOT NULL
GROUP BY plan_type;
/*Conclusion :- Enterprise customers have the highest LTV (3800.9), followed by Pro (1643.7) and Basic (371.6), 
showing that higher-tier plans generate much greater long-term value.*/



-- 7.Monthly New Customer Count
-- Find how many new customers joined each month.
SELECT 
    DATE_FORMAT(signup_date, '%Y-%m') AS month,
    COUNT(customer_id) AS new_customers
FROM customers
GROUP BY DATE_FORMAT(signup_date, '%Y-%m')
ORDER BY month;
/*Conclusion :- Customer signups were fairly consistent, averaging around 50–60 new customers per month, with November 2024 (67) 
showing the highest acquisition — indicating a slight growth peak that month.*/




-- 8.Churn Rate by Month
-- Calculate monthly churn rate (percentage of users who canceled in that month).
SELECT 
    DATE_FORMAT(churn_date, '%Y-%m') AS month,
    COUNT(customer_id) AS churned_customers,
    ROUND(
        (COUNT(customer_id) * 100.0) / 
        (SELECT COUNT(*) FROM customers), 2
    ) AS churn_rate_percent
FROM customers
WHERE churn_date IS NOT NULL
GROUP BY DATE_FORMAT(churn_date, '%Y-%m')
ORDER BY month;

/*Conclusion :- If churn rates are higher in specific months, it signals potential service, pricing, or engagement issues during that period.*/






-- 9.Average Revenue per User (ARPU)
SELECT 
    c.plan_type,
    ROUND(SUM(r.monthly_fee), 2) AS total_revenue
FROM customers AS c
JOIN revenue AS r
    ON c.customer_id = r.customer_id
GROUP BY c.plan_type
ORDER BY total_revenue DESC;
/*Conclusion :- The Enterprise plan generates the highest total revenue (167,000), followed by Pro (66,800) and Basic (16,000) —
 showing that premium plans drive the majority of revenue.*/




-- 10.Top 5 Longest-Subscribed Customers
-- Identify customers with the longest active subscription duration. 
SELECT 
    customer_id,
    TIMESTAMPDIFF(MONTH, signup_date, churn_date) AS subscription_months
FROM customers
WHERE churn_date IS NOT NULL
ORDER BY subscription_months DESC
LIMIT 5;
/*Conclusion :- The longest-subscribed customer stayed for 16 months, while others in the top 5 remained for 14–15 months — 
showing a few customers maintained strong long-term engagement, which can help identify traits of high-retention users.*/

