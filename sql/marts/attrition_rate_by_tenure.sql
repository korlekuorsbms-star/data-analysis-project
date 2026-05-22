-- Attrition rate by years at company
SELECT 
  YearsAtCompany,
  COUNT(*) as total_employees,
  SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) as left_company,
  ROUND(100.0 * SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) / COUNT(*), 2) as attrition_rate_pct
FROM `my-data-project-2026-497114.analytics.attrition`
GROUP BY YearsAtCompany
ORDER BY YearsAtCompany
