-- ============================================================
-- FMCG SQL ANALYTICS PROJECT
-- FILE: 00_project_setup.sql
-- PURPOSE: Database and schema setup
-- ============================================================


-- Create analytical schema
CREATE SCHEMA IF NOT EXISTS analytics;


-- Verify schemas
SELECT
    schema_name
FROM information_schema.schemata
WHERE schema_name IN ('public', 'analytics')
ORDER BY schema_name;


-- Verify staging table exists
SELECT
    table_schema,
    table_name
FROM information_schema.tables
WHERE table_name = 'staging_fmcg';


-- Check staging table structure
SELECT
    column_name,
    data_type
FROM information_schema.columns
WHERE table_schema = 'public'
  AND table_name = 'staging_fmcg'
ORDER BY ordinal_position;


-- Check total number of records
SELECT
    COUNT(*) AS total_rows
FROM public.staging_fmcg;
