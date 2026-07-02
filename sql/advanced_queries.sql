-- Attrition by Department

SELECT
    Department,
    COUNT(*) AS total,
    SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END) AS attrition,
    ROUND(
        100.0 *
        SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END) /
        COUNT(*),
        2
    ) AS attrition_rate
FROM hr_attrition
GROUP BY Department
ORDER BY attrition_rate DESC;


-- Attrition by Job Role

SELECT
    JobRole,
    COUNT(*) total,
    SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END) attrition,
    ROUND(
        100.0*
        SUM(CASE WHEN Attrition='Yes' THEN 1 ELSE 0 END)/COUNT(*),
        2
    ) attrition_rate
FROM hr_attrition
GROUP BY JobRole
ORDER BY attrition_rate DESC;


-- Average Monthly Income

SELECT
    Attrition,
    AVG(MonthlyIncome)
FROM hr_attrition
GROUP BY Attrition;


-- Average Years at Company

SELECT
    Attrition,
    AVG(YearsAtCompany)
FROM hr_attrition
GROUP BY Attrition;


-- Average Total Working Years

SELECT
    Attrition,
    AVG(TotalWorkingYears)
FROM hr_attrition
GROUP BY Attrition;