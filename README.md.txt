# FMCG Sales & Profitability Analytics — SQL Project

## Project Overview

This project analyzes **100,000 FMCG transactions** across multiple Indian cities and product categories using **PostgreSQL**.

The objective is to transform raw transactional data into actionable business insights around:

* Revenue performance
* Profitability and margin
* City-level performance
* Category-level performance
* City × category performance
* Revenue contribution
* Market and product rankings

The project follows an end-to-end SQL analytics workflow covering **data validation, data preparation, business analysis, advanced SQL analysis, analytical views, and business recommendations**.

---

## Business Problem

An FMCG business needs to understand which markets and product categories are driving revenue and profitability.

The analysis focuses on questions such as:

* Which cities generate the highest revenue?
* Which product categories perform best?
* Which cities have the strongest profit margins?
* Which categories are the most margin-efficient?
* What are the top-performing categories within each city?
* Which city × category combinations generate the highest revenue?
* Which segments generate the highest absolute margin?
* How much of total revenue is contributed by each city and category?

The goal is to provide a structured SQL-based analytical framework that can support decisions around **market prioritization, category strategy, inventory allocation, and profitability improvement**.

---

## Key Business Outcomes

The analysis identified differences between **revenue leadership and margin efficiency**, while margin rates remained relatively consistent across cities and categories.

### Overall Performance

* **100,000 transactions**
* **₹3.93 crore total revenue**
* **₹78.74 lakh total margin**
* **20.02% overall margin**

### City Performance

* **Kolkata** was the highest-revenue city with **₹49.99 lakh**, contributing **12.71%** of total revenue.
* **Delhi** ranked second with **₹49.85 lakh**.
* **Bengaluru** recorded the lowest city revenue at **₹48.24 lakh**, contributing **12.26%**.
* **Pune** achieved the highest city-level margin rate at **20.15%**.
* Revenue was relatively evenly distributed across all eight cities, with individual city contributions ranging from **12.26% to 12.71%**.

### Category Performance

* **Fruits** was the highest-revenue category at **₹49.85 lakh**.
* **Grocery** generated the highest absolute margin at **₹9.97 lakh**.
* **Grocery** also achieved the highest category-level margin rate at **20.14%**.
* **Dairy** recorded the lowest category revenue at **₹47.88 lakh**.
* Category margin rates remained tightly clustered around **20%**, indicating relatively consistent profitability across categories.

### City × Category Performance

* **Kolkata × Fruits** was the highest-revenue city-category combination at **₹6.70 lakh**.
* **Kolkata × Fruits** also generated the highest absolute margin among the 64 city-category combinations at approximately **₹1.33 lakh**.
* **Pune × Snacks** achieved the highest city-category margin rate at **20.46%**.
* **Bengaluru × Grocery** also demonstrated strong profitability with a **20.42% margin rate**.

---

## Business Recommendations

### 1. Prioritize Grocery for Profitable Growth

Grocery combines strong revenue performance with the **highest category-level margin rate of 20.14%**.

**Recommendation:** Maintain strong product availability and evaluate opportunities for additional promotional and sales investment in Grocery.

### 2. Investigate Margin Improvement Opportunities in Fruits

Fruits generated the highest category revenue but had a margin rate of **19.92%**, compared with **20.14% for Grocery**.

**Recommendation:** Review pricing, procurement costs, discounts, and product mix to identify opportunities to improve profitability without negatively affecting sales volume.

### 3. Investigate Pune's Profitability Model

Pune achieved the highest city-level margin rate at **20.15%**, despite not being the highest-revenue city.

**Recommendation:** Examine Pune's category mix, pricing, and transaction economics to identify practices that could potentially be replicated in other markets.

### 4. Investigate Bengaluru's Revenue Gap

Bengaluru generated the lowest city revenue at **₹48.24 lakh**.

**Recommendation:** Analyze Bengaluru at the category level to identify the specific areas contributing to the revenue gap rather than treating the entire city as underperforming.

### 5. Focus on City × Category Combinations

Revenue is broadly distributed across cities, with no single city dominating the business.

**Recommendation:** Use city × category analysis to identify specific combinations where additional investment, inventory, or promotional activity may produce better returns.

---

## Project Objectives

1. Validate and prepare the FMCG transactional dataset for analysis.
2. Analyze revenue and profitability across cities and product categories.
3. Identify high-performing and under-performing business segments.
4. Calculate revenue and margin contribution across business dimensions.
5. Apply advanced SQL techniques such as window functions and ranking.
6. Create reusable analytical views for reporting.
7. Translate SQL outputs into management-level business insights and recommendations.

---

## Project Workflow

```text
Raw FMCG CSV Dataset
        ↓
PostgreSQL Staging Table
        ↓
Data Validation & Quality Checks
        ↓
Data Preparation
        ↓
Business Aggregations
        ↓
Advanced SQL Analysis
        ↓
Analytical Views
        ↓
Business Insights & Recommendations
```

---

## Tools & Technologies

* **Database:** PostgreSQL 18
* **SQL Environment:** pgAdmin 4
* **Language:** SQL
* **Data Analysis:** PostgreSQL SQL queries
* **Version Control:** Git / GitHub

---

## Dataset

The project uses a **100,000-row FMCG transactional dataset** containing sales information across:

* **8 cities**
* **8 product categories**
* **100,000 transactions**

The dataset is loaded into PostgreSQL through a staging table:

```text
public.staging_fmcg
```

The staging layer is used as the foundation for validation, analysis, and creation of reusable analytical views.

---

## Database Structure

The project follows a simple staging-to-analytics architecture.

```text
PostgreSQL Database
│
├── public
│   └── staging_fmcg
│       └── Raw transactional data
│
└── analytics
    ├── city_performance
    ├── category_performance
    └── city_category_performance
```

### Staging Table

```text
public.staging_fmcg
```

Contains the original transactional-level FMCG data loaded into PostgreSQL.

### Analytics Schema

```text
analytics.city_performance
analytics.category_performance
analytics.city_category_performance
```

These views provide reusable business-level datasets for reporting and further analysis.

---

## SQL Techniques Demonstrated

The project demonstrates both foundational and advanced SQL techniques used in practical data analytics.

### Core SQL

* `SELECT`
* `WHERE`
* `GROUP BY`
* `HAVING`
* `ORDER BY`
* `LIMIT`

### Aggregations

* `COUNT()`
* `SUM()`
* `AVG()`
* `ROUND()`

### Data Handling

* `NULLIF()`
* Subqueries
* Calculated fields
* Conditional filtering
* Data validation
* Data quality checks

### Advanced SQL

* Common analytical patterns using subqueries
* Window functions
* `RANK()`
* `ROW_NUMBER()`
* `PARTITION BY`
* `SUM() OVER()`
* Top-N analysis
* Revenue contribution analysis
* City × category analysis

### SQL Views

Reusable analytical views were created for:

* City performance
* Category performance
* City × category performance

---

## Business Questions Answered

The analysis answers the following business questions:

1. What is the overall revenue and margin performance?
2. Which city generates the highest revenue?
3. Which category generates the highest revenue?
4. Which city has the highest margin percentage?
5. Which category has the highest margin percentage?
6. Which category performs best within each city?
7. Which city performs best within each category?
8. What percentage of total revenue comes from each city?
9. What percentage of total revenue comes from each category?
10. What are the top three categories in each city?
11. Which city × category segments generate the highest revenue?
12. Which city × category segments generate the highest absolute margin?

---

## Key Analytical Takeaways

The SQL analysis highlights several important business patterns:

* Revenue is **well distributed across the eight cities**, with no single market dominating overall sales.
* **Kolkata leads in total revenue**, while **Pune leads in margin efficiency**.
* **Fruits leads category revenue**, while **Grocery leads both absolute margin and margin rate**.
* Margin rates remain relatively consistent at approximately **20%**, suggesting that revenue scale is a more significant differentiator than margin efficiency across most segments.
* The **city × category analysis** provides greater detail than city- or category-level analysis alone and helps identify specific combinations that warrant further investigation.
* **Kolkata × Fruits** represents the strongest city-category combination by both revenue and absolute margin.

---

## Project Structure

The final GitHub repository is organized to separate documentation, SQL analysis, and supporting project files.

```text
FMCG-Sales-Profitability-Analytics/
│
├── README.md
│
├── sql/
│   ├── 01_data_validation.sql
│   ├── 02_data_cleaning.sql
│   ├── 03_basic_analysis.sql
│   ├── 04_advanced_analysis.sql
│   └── 05_analytical_views.sql
│
├── data/
│   └── README.md
│
└── .gitignore
```

The raw dataset is not required to be committed to GitHub if it is subject to file-size or distribution restrictions. The `data/README.md` file can document the dataset source and loading process.

---

## Conclusion

This project demonstrates an end-to-end **SQL-based business analytics workflow** using PostgreSQL.

Starting from transactional FMCG data, the project progresses through:

**Data Validation → Data Preparation → Business Analysis → Advanced SQL → Analytical Views → Business Insights**

The analysis demonstrates the ability to use SQL not only for querying data, but also for **business performance analysis, segmentation, ranking, revenue contribution analysis, profitability assessment, and decision-oriented recommendations**.

---

## Skills Demonstrated

**SQL | PostgreSQL | Data Validation | Data Cleaning | Aggregation | Window Functions | Ranking | Business Analysis | Profitability Analysis | Revenue Analysis | Analytical Views | Data Storytelling | Business Recommendations | Git | GitHub**
