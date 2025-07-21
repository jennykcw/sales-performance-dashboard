# 📊 Sales & Customer Performance Dashboard
**SQL (BigQuery) + Tableau Public**

## 📌 Project Objective
Analyze sales and customer data from a simulated-ecommerce platform using SQL and visualize business insights with Tableau. The objective is to uncover sales trends, product performance, and customer behavior across regions and time to support data-driven business decisions.

## ❓ Business Questions

### Sales KPIs:
1. What is the total sales revenue?
2. Which product categories bring in the most sales?
3. Who are our top 5 best-selling products?
4. How have monthly sales changed over time?

### Customer KPIs:
5. How many unique customers made purchases?
6. Which countries or states have the most customers?
7. Who are our most loyal customers (repeat buyers)?
8. Are older or younger users buying more?

## 🧠 SQL Queries
All SQL queries used to address the business questions are stored in the [`sql/`](./sql/) folder. Each file is named according to the query number and topic for easy reference. 

## 🗂️ Project Structure
- `README.md` - Project overview and documentation
- `sql/` - SQL scripts for analysis
- `summary/` - KPI plans, insights and recommendations
- `screenshots/` - ERD and Tableau dashboard images

## 🛠️ Tools Used
- **Google BigQuery (Sandbox)** - SQL queries & data extraction
- **Tableau Public** - Dashboard creation & visual storytelling
- **GitHub** - Version control and project sharing
- **Google Docs / Word** - Documentation and reporting
- **dbdiagram.io** - ERD modeling and database relationship mapping

## 📚 Dataset
The dataset is sourced from BigQuery's public data catalog:
**`bigquery-public-data.thelook_ecommerce`**

Main tables used:
- `users` - Customer profiles
- `orders` - Purchase transactions
- `order_items` - Products in each order
- `products` - Product info (name, category, brand, cost, etc.)

## 🗺️ Entity Relationship Diagram (ERD)
Visualizing the structure and table relationships of the `bigquery-public-data.thelook_ecommerce` dataset. It serves as the foundation for designing efficient SQL queries and meaningful dashboard insights.

![ERD Overview](./screenshots/erd_thelook_ecommerce.png)

📎 [Download full ERD in PDF format](./screenshots/erd_thelook_ecommerce.pdf)

---

*Insight summaries, recommendations and dashboard visuals will be added in upcoming stages.*
