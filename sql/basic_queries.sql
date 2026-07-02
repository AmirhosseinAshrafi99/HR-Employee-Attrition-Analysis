-- Employee Attrition Overview

SELECT
    COUNT(*) AS total_employees
FROM hr_attrition;

SELECT
    AVG(Age) AS average_age
FROM hr_attrition;

SELECT
    AVG(MonthlyIncome) AS average_income
FROM hr_attrition;

SELECT
    Attrition,
    COUNT(*) AS employees
FROM hr_attrition
GROUP BY Attrition;

SELECT
    Department,
    COUNT(*) AS employees
FROM hr_attrition
GROUP BY Department;

SELECT
    JobRole,
    COUNT(*) AS employees
FROM hr_attrition
GROUP BY JobRole
ORDER BY employees DESC;

SELECT
    OverTime,
    COUNT(*) AS employees
FROM hr_attrition
GROUP BY OverTime;