-- ============================================================
-- FMCG SALES & PROFITABILITY ANALYTICS
-- FILE: 01_data_validation.sql
-- PURPOSE: Validate source data quality before analysis
-- ============================================================
-- 1. Total number of records
-- ============================================================

SELECT
    COUNT(*) AS total_rows
FROM public.staging_fmcg;


-- ============================================================
-- 2. Check for NULL values
-- ============================================================

SELECT
    COUNT(*) FILTER (WHERE city IS NULL) AS null_city,
    COUNT(*) FILTER (WHERE category IS NULL) AS null_category,
    COUNT(*) FILTER (WHERE revenue IS NULL) AS null_revenue,
    COUNT(*) FILTER (WHERE margin IS NULL) AS null_margin
FROM public.staging_fmcg;


-- ============================================================
-- 3. Check available cities
-- ============================================================

SELECT DISTINCT
    city
FROM public.staging_fmcg
ORDER BY city;


-- ============================================================
-- 4. Check available categories
-- ============================================================

SELECT DISTINCT
    category
FROM public.staging_fmcg
ORDER BY category;


-- ============================================================
-- 5. Check for negative revenue
-- ============================================================

SELECT
    COUNT(*) AS negative_revenue_records
FROM public.staging_fmcg
WHERE revenue < 0;


-- ============================================================
-- 6. Check for negative margin
-- ============================================================

SELECT
    COUNT(*) AS negative_margin_records
FROM public.staging_fmcg
WHERE margin < 0;


-- ============================================================
-- 7. Check revenue statistics
-- ============================================================

SELECT
    MIN(revenue) AS minimum_revenue,
    MAX(revenue) AS maximum_revenue,
    AVG(revenue) AS average_revenue
FROM public.staging_fmcg;


-- ============================================================
-- 8. Check margin statistics
-- ============================================================

SELECT
    MIN(margin) AS minimum_margin,
    MAX(margin) AS maximum_margin,
    AVG(margin) AS average_margin
FROM public.staging_fmcg;
