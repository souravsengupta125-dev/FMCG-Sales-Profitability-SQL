SELECT
    city,
    ROUND(SUM(revenue), 2) AS revenue,
    ROUND(SUM(margin), 2) AS margin
FROM public.staging_fmcg
GROUP BY city
ORDER BY revenue DESC
LIMIT 1;