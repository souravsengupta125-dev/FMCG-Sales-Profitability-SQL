# FMCG Sales & Profitability Analytics
### PostgreSQL + Power BI

An end-to-end FMCG sales and profitability analytics project using **PostgreSQL and Power BI** to transform transaction-level sales data into actionable business insights.

The project analyzes **100,000 FMCG transactions** across cities, categories, brands, sales channels, store formats, customer loyalty and inventory indicators.

The solution combines SQL-based business analysis with an interactive Power BI reporting layer designed for both executive-level monitoring and detailed business analysis.

---

## Project Overview

The objective of this project is to analyze FMCG sales performance and identify the key drivers of:

- Revenue
- Profitability
- Margin %
- City performance
- Category performance
- City × Category performance
- Brand performance
- Sales channel performance
- Store-format performance
- Customer loyalty
- Inventory status
- Profit per transaction

The project was developed in two main layers:

### 1. PostgreSQL / SQL Analytics

PostgreSQL is used for:

- Data validation
- Business performance analysis
- City and category analysis
- City × Category analysis
- Advanced SQL analysis
- Ranking and Top-N analysis
- Revenue contribution analysis
- Reusable analytical views
- Management-level business insights

### 2. Power BI

Power BI is used to convert the analytical data into interactive dashboards for:

- Executive reporting
- Profitability analysis
- Business performance monitoring
- Operational analysis
- Interactive filtering and drill-down exploration

**- Dashboard Preview
<img width="1411" height="799" alt="image" src="https://github.com/user-attachments/assets/baa1ce37-7f6c-451f-aa97-01762dddd483" />
**<img width="1456" height="800" alt="image" src="https://github.com/user-attachments/assets/a521bd24-39c3-4deb-94c5-bd3cf95bad19" />

# Technology Stack

| Technology | Purpose |
|---|---|
| PostgreSQL | Data storage, SQL analysis and analytical views |
| SQL | Business analysis, ranking, contribution and segmentation |
| Power BI | Interactive dashboards and visualization |
| DAX | Power BI measures and business metrics |
| GitHub | Version control and project documentation |

---

# Dataset

The project uses a transaction-level FMCG dataset containing approximately **100,000 records**.

Key business fields include:

- Invoice ID
- Invoice Date
- City
- Store Format
- Category
- Brand
- Channel
- Payment Mode
- Units
- Cost Price
- Selling Price
- Revenue
- Cost
- Margin / Profit
- Stock on Hand
- Reorder Level
- Lead Time
- Customer Age
- Customer Gender
- Loyalty Flag

The dataset supports analysis across sales, profitability, customer and inventory dimensions.

---

# Data Architecture

The project contains separate PostgreSQL layers for SQL analysis and the final Power BI reporting model.

```text
                     FMCG DATA
                         |
          +--------------+--------------+
          |                             |
          v                             v
   staging_fmcg                    fmcg_sales
          |                             |
          |                             v
          |                       vw_fmcg_base
          |                             |
          v                             v
   SQL Analysis                    Power BI
          |                       Data Model
          |                             |
          v                    +--------+--------+
 Analytical Views              |                 |
          |                    v                 v
          |              Executive Overview   Detailed
          |                                   Business
          |                                   Analysis
          v
 Final Business Insights
