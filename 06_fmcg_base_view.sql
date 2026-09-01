-- ============================================================
-- FMCG SALES & PROFITABILITY ANALYTICS
-- FILE: 06_fmcg_base_view.sql
-- PURPOSE: Create the reporting base view used by Power BI
-- ============================================================

CREATE OR REPLACE VIEW public.vw_fmcg_base AS

SELECT
    invoice_id,
    invoice_date,
    city,
    store_format,
    category,
    brand,
    channel,
    payment_mode,
    units,
    cost_price,
    selling_price,
    revenue,
    cost,

    -- Calculated Profit
    revenue - cost AS profit,

    -- Calculated Margin %
    CASE
        WHEN revenue = 0::numeric THEN 0::numeric
        ELSE
            ROUND(
                (revenue - cost) / revenue * 100::numeric,
                2
            )
    END AS margin_pct,

    stock_on_hand,
    reorder_level,
    lead_time_days,

    -- Inventory Status
    CASE
        WHEN stock_on_hand <= reorder_level
            THEN 'Reorder Required'::text

        WHEN stock_on_hand::numeric
             <= (reorder_level::numeric * 1.5)
            THEN 'Low Stock'::text

        ELSE 'Adequate Stock'::text
    END AS stock_status,

    customer_age,
    customer_gender,
    loyalty_flag

FROM public.fmcg_sales;
