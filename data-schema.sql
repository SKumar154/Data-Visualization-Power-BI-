-- Power BI Employee Survey Analysis Project
-- Database schema and data analysis queries

-- This project analyzes survey responses from 600+ data professionals
-- Source: Real_Data_Survey_Taken_By_Employees.xlsx
-- Output: Power BI Project.pbix dashboard

CREATE TABLE employee_survey (
    id INTEGER PRIMARY KEY,
    role VARCHAR(100),
    salary DECIMAL(10,2),
    gender VARCHAR(20),
    department VARCHAR(100),
    job_satisfaction INTEGER,
    experience_years INTEGER,
    location VARCHAR(100)
);

-- Key analysis queries for Power BI dashboard

-- 1. Salary analysis by role
SELECT 
    role,
    AVG(salary) as avg_salary,
    COUNT(*) as employee_count
FROM employee_survey
GROUP BY role
ORDER BY avg_salary DESC;

-- 2. Job satisfaction trends
SELECT 
    department,
    AVG(job_satisfaction) as avg_satisfaction
FROM employee_survey
GROUP BY department;

-- 3. Gender distribution analysis
SELECT 
    gender,
    COUNT(*) as count,
    ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM employee_survey), 2) as percentage
FROM employee_survey
GROUP BY gender;

-- 4. Experience vs Salary correlation
SELECT 
    experience_years,
    AVG(salary) as avg_salary
FROM employee_survey
WHERE experience_years IS NOT NULL
GROUP BY experience_years
ORDER BY experience_years;

-- Data transformations used in Power BI:
-- - Salary normalization and outlier detection
-- - Geographic analysis and mapping
-- - Time-based trend analysis
-- - Cross-filtering capabilities for interactive dashboard
