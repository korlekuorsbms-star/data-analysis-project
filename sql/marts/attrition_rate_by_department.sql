-- Attrition rate by department and job role
SELECT 
  Department,
  JobRole,
  COUNT(*) as total_employees,
  SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) as employees_left,
  ROUND(100.0 * SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) / COUNT(*), 2) as attrition_rate_pct
FROM `my-data-project-2026-497114.analytics.attrition`
GROUP BY Department, JobRole
ORDER BY attrition_rate_pct DESC
