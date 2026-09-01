-- ============================================================
-- FMCG SQL ANALYTICS PROJECT
-- FILE: 05_views.sql
-- PURPOSE: Create reusable analytical views
-- ============================================================


-- ============================================================
-- 1. City × Category Performance
-- ============================================================

CREATE OR REPLACE VIEW analytics.city_category_performance AS
SELECT
    city,
    category,
    COUNT(*) AS transactions,
    SUM(revenue) AS revenue,
    SUM(margin) AS margin,
    ROUND(
        SUM(margin) * 100.0 / NULLIF(SUM(revenue), 0),
        2
    ) AS margin_pct
FROM public.staging_fmcg
GROUP BY
    city,
    category;


-- ============================================================
-- 2. City Performance
-- ============================================================

CREATE OR REPLACE VIEW analytics.city_performance AS
SELECT
    city,
    COUNT(*) AS transactions,
    SUM(revenue) AS revenue,
    SUM(margin) AS margin,
    ROUND(
        SUM(margin) * 100.0 / NULLIF(SUM(revenue), 0),
        2
    ) AS margin_pct
FROM public.staging_fmcg
GROUP BY city;


-- ============================================================
-- 3. Category Performance
-- ============================================================

CREATE OR REPLACE VIEW analytics.category_performance AS
SELECT
    category,
    COUNT(*) AS transactions,
    SUM(revenue) AS revenue,
    SUM(margin) AS margin,
    ROUND(
        SUM(margin) * 100.0 / NULLIF(SUM(revenue), 0),
        2
    ) AS margin_pct
FROM public.staging_fmcg
GROUP BY category;
