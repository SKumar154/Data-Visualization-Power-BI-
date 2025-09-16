-- Power BI Employee Survey Analysis Project
-- Data queries and business intelligence analysis

-- Project: Employee Survey Data Visualization
-- Source: Real_Data_Survey_Taken_By_Employees.xlsx (99.5KB)
-- Output: Power BI Project.pbix (93.6KB dashboard)
-- Analysis: 600+ professional survey responses

-- Key analysis areas:
SELECT 'Salary Analysis' as analysis_type, 'Role-based compensation trends' as description
UNION ALL
SELECT 'Demographics', 'Gender and age distribution patterns'
UNION ALL  
SELECT 'Job Satisfaction', 'Department satisfaction metrics'
UNION ALL
SELECT 'Geographic Analysis', 'Location-based insights'
UNION ALL
SELECT 'Career Trends', 'Experience level correlations';

-- Dashboard components:
CREATE VIEW salary_analysis AS
SELECT department, AVG(salary) as avg_salary
FROM employee_survey GROUP BY department;

CREATE VIEW satisfaction_metrics AS  
SELECT role, AVG(job_satisfaction) as avg_satisfaction
FROM employee_survey GROUP BY role;

-- Power BI transformations and calculations
-- Interactive filtering and cross-chart relationships
-- Real-time dashboard updates and geographic mapping
