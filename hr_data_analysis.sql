CREATE DATABASE hr_analysis;

USE hr_analysis;

-- 1. Total Number of Employees:
SELECT COUNT(*) AS TotalEmployees
FROM hr_analytics;

-- 2. Attrition Rate by Age Group:
SELECT 
    AgeGroup,
    COUNT(*) AS TotalEmployees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS AttritionCount,
    (SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*)) AS AttritionRate
FROM 
    hr_analytics
GROUP BY 
    AgeGroup;

-- 3. Average Daily Rate by Department:
SELECT 
    Department,
    AVG(DailyRate) AS AvgDailyRate
FROM 
    hr_analytics
GROUP BY 
    Department;

-- 4. Total Monthly Income by Gender:
SELECT 
    Gender,
    SUM(MonthlyIncome) AS TotalMonthlyIncome
FROM 
    hr_analytics
GROUP BY 
    Gender;

-- 5. Attrition by Business Travel Frequency:
SELECT 
    BusinessTravel,
    COUNT(*) AS TotalEmployees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS AttritionCount,
    (SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*)) AS AttritionRate
FROM 
    hr_analytics
GROUP BY 
    BusinessTravel;

-- 6. Average Years in Current Role by Job Level:
SELECT 
    JobLevel,
    AVG(YearsInCurrentRole) AS AvgYearsInCurrentRole
FROM 
    hr_analytics
GROUP BY 
    JobLevel;

-- 7. Top 5 Job Roles by Average Monthly Income:
SELECT 
    JobRole,
    AVG(MonthlyIncome) AS AvgMonthlyIncome
FROM 
    hr_analytics
GROUP BY 
    JobRole
ORDER BY 
    AvgMonthlyIncome DESC
LIMIT 5;

-- 8. Number of Employees by Education Field:
SELECT 
    EducationField,
    COUNT(*) AS EmployeeCount
FROM 
    hr_analytics
GROUP BY 
    EducationField;

-- 9. Average Percent Salary Hike by Job Role:
SELECT 
    JobRole,
    AVG(PercentSalaryHike) AS AvgPercentSalaryHike
FROM 
    hr_analytics
GROUP BY 
    JobRole;

-- 10. Attrition Rate by Marital Status:
SELECT 
    MaritalStatus,
    COUNT(*) AS TotalEmployees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS AttritionCount,
    (SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*)) AS AttritionRate
FROM 
    hr_analytics
GROUP BY 
    MaritalStatus;

-- 11. Average Work Life Balance by Department:
SELECT 
    Department,
    AVG(WorkLifeBalance) AS AvgWorkLifeBalance
FROM 
    hr_analytics
GROUP BY 
    Department;

-- 12. Employee Count by Stock Option Level:
SELECT 
    StockOptionLevel,
    COUNT(*) AS EmployeeCount
FROM 
    hr_analytics
GROUP BY 
    StockOptionLevel;

-- 13. Attrition vs. Distance from Home:
SELECT 
    DistanceFromHome,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS AttritionCount
FROM 
    hr_analytics
GROUP BY 
    DistanceFromHome
ORDER BY 
    DistanceFromHome;

-- 14. Average Training Times Last Year by Job Level:
SELECT 
    JobLevel,
    AVG(TrainingTimesLastYear) AS AvgTrainingTimesLastYear
FROM 
    hr_analytics
GROUP BY 
    JobLevel;

-- 15. Average Job Involvement by Age Group:
SELECT 
    AgeGroup,
    AVG(JobInvolvement) AS AvgJobInvolvement
FROM 
    hr_analytics
GROUP BY 
    AgeGroup;

-- 16. Performance Rating Distribution:
SELECT 
    PerformanceRating,
    COUNT(*) AS EmployeeCount
FROM 
    hr_analytics
GROUP BY 
    PerformanceRating;

-- 17. Average Years at Company by Gender:
SELECT 
    Gender,
    AVG(YearsAtCompany) AS AvgYearsAtCompany
FROM 
    hr_analytics
GROUP BY 
    Gender;

-- 18. Average Monthly Income by Education Level:
SELECT 
    Education,
    AVG(MonthlyIncome) AS AvgMonthlyIncome
FROM 
    hr_analytics
GROUP BY 
    Education;

-- 19. Attrition by Job Satisfaction Level:
SELECT 
    JobSatisfaction,
    COUNT(*) AS TotalEmployees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS AttritionCount,
    (SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*)) AS AttritionRate
FROM 
    hr_analytics
GROUP BY 
    JobSatisfaction;

-- 20. Employee Count by Job Role and Department:
SELECT 
    JobRole,
    Department,
    COUNT(*) AS EmployeeCount
FROM 
    hr_analytics
GROUP BY 
    JobRole, Department;

-- 21. Average Daily Rate by Age Group:
SELECT 
    AgeGroup,
    AVG(DailyRate) AS AvgDailyRate
FROM 
    hr_analytics
GROUP BY 
    AgeGroup;

-- 22. Top 5 Employees with Highest Monthly Income:
SELECT 
    EmpID,
    MonthlyIncome
FROM 
    hr_analytics
ORDER BY 
    MonthlyIncome DESC
LIMIT 5;

-- 23. Average Percent Salary Hike by Gender:
SELECT 
    Gender,
    AVG(PercentSalaryHike) AS AvgPercentSalaryHike
FROM 
    hr_analytics
GROUP BY 
    Gender;

-- 24. Attrition by Environment Satisfaction Level:
SELECT 
    EnvironmentSatisfaction,
    COUNT(*) AS TotalEmployees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS AttritionCount,
    (SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*)) AS AttritionRate
FROM 
    hr_analytics
GROUP BY 
    EnvironmentSatisfaction;

-- 25. Average Job Satisfaction vs. Job Level:
SELECT 
    JobLevel,
    AVG(JobSatisfaction) AS AvgJobSatisfaction
FROM 
    hr_analytics
GROUP BY 
    JobLevel;

-- 26. Total Employees by OverTime Status: 
SELECT 
    OverTime,
    COUNT(*) AS EmployeeCount
FROM 
    hr_analytics
GROUP BY 
    OverTime;

-- 27. Attrition by Years Since Last Promotion:
SELECT 
    YearsSinceLastPromotion,
    COUNT(*) AS TotalEmployees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS AttritionCount,
    (SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*)) AS AttritionRate
FROM 
    hr_analytics
GROUP BY 
    YearsSinceLastPromotion;

-- 28. Average Stock Option Level by Job Role:
SELECT 
    JobRole,
    AVG(StockOptionLevel) AS AvgStockOptionLevel
FROM 
    hr_analytics
GROUP BY 
    JobRole;

-- 29. Attrition Rate by Salary Slab:
SELECT 
    SalarySlab,
    COUNT(*) AS TotalEmployees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS AttritionCount,
    (SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*)) AS AttritionRate
FROM 
    hr_analytics
GROUP BY 
    SalarySlab;

-- 30. Average Total Working Years by Job Role:
SELECT 
    JobRole,
    AVG(TotalWorkingYears) AS AvgTotalWorkingYears
FROM 
    hr_analytics
GROUP BY 
    JobRole;
