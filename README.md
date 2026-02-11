# B2B-Wholesaler-Seasonality-Analysis
SQL &amp; Power BI analysis of B2B wholesaler behavior to distinguish seasonality from churn and identify category-level revenue decline.
## Project Overview

This project analyzes B2B wholesaler transaction data to determine whether inactive wholesalers were truly churned or simply seasonal buyers. The goal was to identify customer purchasing behavior patterns, detect revenue concentration, and understand category-level decline using SQL and Power BI.

## Business Problem
The company observed declining transactions from several wholesalers and wanted to understand:
Have these wholesalers permanently stopped buying?
Is the decline related to pricing or relationship issues?
Is the drop driven by specific product categories?
Are some wholesalers seasonal buyers rather than long-term partners?

## Key Findings
<img width="492" height="299" alt="Screenshot 2026-02-11 120251" src="https://github.com/user-attachments/assets/0c9b7d23-e86b-413a-9924-064824f7bd13" />

A large portion of inactive wholesalers were seasonal buyers, not permanently churned partners.

The lowest revenue segment contributed only ₹7,205, indicating low-value, one-time transactions.

Most inactive wholesalers showed single or low-frequency purchases, confirming seasonal demand behavior.

The Clothing category experienced the sharpest decline, suggesting a category-specific seasonal impact rather than company-wide failure.
Revenue decline was driven by demand patterns, not relationship breakdown.

## Business Recommendations
To convert seasonal wholesalers into long-term partners:

1.Improve product quality control in the clothing category.

2.Strengthen pre-dispatch damage checks.

3.Ensure timely transportation before seasonal peaks.

4.Monitor category-level performance instead of only overall revenue.

## Tools & Technologies
MySQL:
Aggregations (SUM, COUNT, MAX)
View creation
Date-based inactivity logic

Power BI:
KPI Cards
Product Category slicers
Customer-level summary tables

## Conclusion
This analysis demonstrates how combining SQL segmentation with BI visualization helps distinguish between churn and seasonality in B2B customer behavior.
