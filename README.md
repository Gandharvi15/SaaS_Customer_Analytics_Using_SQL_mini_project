📊 SaaS Customer and Revenue Analysis (SQL Project)
📁 Project Overview

This project analyzes a SaaS (Software-as-a-Service) business dataset to uncover insights about customer behavior, churn, revenue, and business performance using SQL queries.

The analysis focuses on metrics such as customer lifetime, churn rate, Monthly Recurring Revenue (MRR), Customer Acquisition Cost (CAC), and Lifetime Value (LTV) — helping understand key growth and retention factors for a subscription-based business.

🧩 Dataset Description

The project uses three relational tables:

customers – Contains customer details such as:

customer_id, signup_date, churn_date, plan_type, acquisition_cost

subscriptions – Tracks unique subscriptions per customer:

subscription_id, customer_id, plan_id, etc.

revenue – Contains revenue details:

customer_id, monthly_fee, plan_type, etc.

🧠 Key SQL Insights
1️⃣ Total Customers

168 unique customers were recorded in the subscriptions table.
📈 Represents distinct individuals/accounts using the service.

2️⃣ Active vs. Canceled Customers

All 1,000 customers have churned, indicating no active subscriptions remain.
⚠️ Potential issue with retention or end of subscription cycle.

3️⃣ Monthly Recurring Revenue (MRR)

MRR is calculated from active customers (none currently active).
💰 MRR is currently zero due to full churn.

4️⃣ Average Customer Lifetime

Average lifetime = 4.87 months.
⏳ Customers typically stay subscribed for ~5 months before canceling.

5️⃣ Customer Acquisition Cost (CAC)

Average CAC = $110.11
💸 The company spends ~$110 to acquire each new customer.

6️⃣ Lifetime Value (LTV) by Plan
Plan Type	Avg LTV ($)
Enterprise	3800.9
Pro	1643.7
Basic	371.6

💼 Higher-tier plans (Enterprise, Pro) contribute significantly more value.

7️⃣ Monthly New Customer Count

Average 50–60 new signups per month, peaking in November 2024 (67).
📊 Indicates steady acquisition and a growth peak that month.

8️⃣ Monthly Churn Rate

Shows monthly churn percentage.
📉 High churn months may indicate service or pricing issues.

9️⃣ Average Revenue per User (ARPU)
Plan Type	Total Revenue ($)
Enterprise	167,000
Pro	66,800
Basic	16,000

💰 Enterprise plan drives the majority of total revenue.

🔟 Top 5 Longest-Subscribed Customers

Longest subscription: 16 months, others: 14–15 months.
👥 Identifying these customers can help target retention strategies.

🧾 Conclusion

This SQL-based analysis provides a comprehensive overview of the SaaS company’s customer dynamics and financial health:

Customer retention is low (high churn).

Premium plans drive the majority of revenue.

Average customer lifetime is ~5 months.

Acquisition cost and churn patterns highlight areas for marketing and service improvement.

🛠️ Tools & Technologies

SQL (MySQL / PostgreSQL compatible)

Data Source: Simulated SaaS business dataset
