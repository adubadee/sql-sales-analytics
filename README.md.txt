# SQL Sales Analytics Project

## Overview
This project analyzes sales data using advanced SQL techniques including:
- Aggregate functions
- Window functions (LAG, DENSE_RANK)
- Revenue calculations
- Customer and product performance analysis
- Inventory diagnostics

## Key Business Questions Answered

1. What is total revenue?
2. Which stores generate the most revenue?
3. What are the top 10 products by revenue?
4. Who are the top 10 customers?
5. How does staff performance compare?
6. What is the year-over-year revenue growth?
7. Which products are slow-moving inventory?

## Advanced SQL Features Used
- JOINs
- GROUP BY
- Window Functions (LAG, DENSE_RANK)
- CASE statements
- Views

## Example Query (Year-over-Year Growth)

SELECT
    YEAR(o.order_date) AS order_year,
    SUM(oi.quantity * oi.list_price * (1 - oi.discount)) AS yearly_revenue,
    LAG(SUM(...)) OVER (ORDER BY YEAR(o.order_date)) AS previous_year_revenue
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
GROUP BY YEAR(o.order_date);

## Skills Demonstrated
- Business intelligence thinking
- Revenue modeling
- Performance analysis
- SQL optimization
- Data aggregation logic
