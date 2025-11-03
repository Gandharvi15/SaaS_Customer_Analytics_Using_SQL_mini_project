

# 📊 SaaS Customer Analytics Using SQL

This project analyzes key business metrics for a **SaaS (Software-as-a-Service)** company using **SQL**. It provides insights into customer behavior, churn, revenue, and growth through structured SQL queries.

---

## 🧠 Project Overview

SaaS businesses rely on understanding their **customer base**, **revenue trends**, and **retention patterns**.
This project uses SQL to explore and analyze customer and subscription data, helping answer questions like:

* How many customers are active or churned?
* What is the **average customer lifetime**?
* Which **subscription plan** brings the most revenue?
* What are the **MRR (Monthly Recurring Revenue)**, **LTV (Lifetime Value)**, and **CAC (Customer Acquisition Cost)**?

---

## 🗂️ Dataset Description

The project assumes the following database structure:

| Table Name        | Description                                                                          |
| ----------------- | ------------------------------------------------------------------------------------ |
| **customers**     | Contains customer details, signup date, churn date, plan type, and acquisition cost. |
| **subscriptions** | Tracks all customer subscription records.                                            |
| **revenue**       | Contains revenue and monthly fee details for each customer.                          |

**Key Columns:**

* `customer_id` – Unique customer identifier
* `signup_date` – Date customer subscribed
* `churn_date` – Date customer canceled (NULL if active)
* `plan_type` – Type of plan (Basic, Pro, Enterprise)
* `monthly_fee` – Monthly payment amount
* `acquisition_cost` – Cost of acquiring a customer

---

## ⚙️ SQL Analyses Performed

### 1️⃣ Total Number of Customers

Count unique customers to find the total user base.

### 2️⃣ Active vs. Churned Customers

Compare currently active customers vs. those who have churned.

### 3️⃣ Monthly Recurring Revenue (MRR)

Calculate total recurring revenue from active subscriptions.

### 4️⃣ Average Customer Lifetime (in Months)

Measure how long customers stay subscribed before churn.

### 5️⃣ Customer Acquisition Cost (CAC)

Find the average cost spent on acquiring new customers.

### 6️⃣ Lifetime Value (LTV) by Plan Type

Estimate how much revenue each plan type brings over its customer lifetime.

### 7️⃣ Monthly New Customer Count

Track customer acquisition trends month-by-month.

### 8️⃣ Churn Rate by Month

Measure customer churn rate monthly to identify retention challenges.

### 9️⃣ Average Revenue per User (ARPU)

Calculate revenue contribution per plan.

### 🔟 Top 5 Longest-Subscribed Customers

Identify customers who stayed subscribed the longest.

---

## 🧩 Tools & Technologies

* **SQL** – MySQL syntax used for querying
* **Database Management System:** MySQL / PostgreSQL (compatible)
* **Dataset Source:** Simulated SaaS dataset

---

