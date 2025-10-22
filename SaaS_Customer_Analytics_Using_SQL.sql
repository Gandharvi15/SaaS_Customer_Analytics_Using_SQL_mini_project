-- 1. Total Number of Customers
-- Find the total number of unique customers.
select count(distinct customer_id) as total_no_cust
from subscriptions;

-- 2. Active vs. Churned Customers
-- Identify how many customers are still active vs. canceled.
select
 sum(case When churn_date is null then 1 else 0 end) as total_active_cust,
 sum(case When churn_date is not null then 1 else 0 end) as total_canceled_cust
from customers;



--  3.Monthly Recurring Revenue (MRR)
-- Calculate total MRR (sum of monthly fees of all active customers).
SELECT sum(r.monthly_fee) AS total_MRR
FROM revenue as r
join customers as c
on r.customer_id=c.customer_id
WHERE churn_date IS NULL;



-- 4.Average Customer Lifetime (in months)
-- Find average number of months customers stayed subscribed.


-- 5.Customer Acquisition Cost (CAC)
-- Find average acquisition cost across all customers.
select avg(acquisition_cost)
from customers;


-- 6.Lifetime Value (LTV) by Plan Type
-- Estimate average LTV for each subscription plan.



-- 7.Monthly New Customer Count
-- Find how many new customers joined each month.



-- 8.Churn Rate by Month
-- Calculate monthly churn rate (percentage of users who canceled in that month).



-- 9.Revenue by Country
-- See total revenue contribution by country.



-- 10.Top 5 Longest-Subscribed Customers
-- Identify customers with the longest active subscription duration. 