-- Attrition rate by overtime status
SELECT 
  OverTime,
  COUNT(*) as total_employees,
  SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) as left_company,
  ROUND(100.0 * SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) / COUNT(*), 2) as attrition_rate_pct
FROM `your-project.analytics.employee_attrition`
GROUP BY OverTime
ORDER BY attrition_rate_pct DESC
