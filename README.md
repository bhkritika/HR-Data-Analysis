# HR Data Analysis

## Overview

This project involves performing comprehensive data analysis on HR data using SQL. The dataset contains various attributes related to employee information, job roles, salaries, and attrition. The analysis includes a range of queries from basic aggregations to advanced metrics, providing insights into employee demographics, job satisfaction, attrition rates, and compensation.

## Dataset

The dataset used in this analysis is named `hr_analytics` and contains the following columns:

- `EmpID`: Employee ID
- `Age`: Age of the employee
- `AgeGroup`: Age group classification
- `Attrition`: Whether the employee has left the company (Yes/No)
- `BusinessTravel`: Frequency of business travel
- `DailyRate`: Daily rate of the employee
- `Department`: Department of the employee
- `DistanceFromHome`: Distance from home to workplace
- `Education`: Education level
- `EducationField`: Field of education
- `EmployeeCount`: Total number of employees (should be 1 for each row)
- `EmployeeNumber`: Employee number
- `EnvironmentSatisfaction`: Satisfaction with the work environment
- `Gender`: Gender of the employee
- `HourlyRate`: Hourly rate of the employee
- `JobInvolvement`: Involvement in the job
- `JobLevel`: Job level of the employee
- `JobRole`: Job role of the employee
- `JobSatisfaction`: Satisfaction with the job
- `MaritalStatus`: Marital status of the employee
- `MonthlyIncome`: Monthly income of the employee
- `SalarySlab`: Salary slab of the employee
- `MonthlyRate`: Monthly rate of the employee
- `NumCompaniesWorked`: Number of companies worked at
- `Over18`: Whether the employee is over 18 (Yes)
- `OverTime`: Whether the employee works overtime (Yes/No)
- `PercentSalaryHike`: Percentage increase in salary
- `PerformanceRating`: Rating of employee performance
- `RelationshipSatisfaction`: Satisfaction with relationships at work
- `StandardHours`: Standard hours of work
- `StockOptionLevel`: Level of stock options
- `TotalWorkingYears`: Total years of working experience
- `TrainingTimesLastYear`: Number of times trained in the last year
- `WorkLifeBalance`: Work-life balance rating
- `YearsAtCompany`: Years at the current company
- `YearsInCurrentRole`: Years in the current role
- `YearsSinceLastPromotion`: Years since the last promotion
- `YearsWithCurrManager`: Years with the current manager

## Analysis

The SQL analysis performed includes:

1. **Basic Analysis:**
   - Total number of employees.
   - Employee counts and distributions by various attributes (e.g., job role, department, gender).
   - Performance rating distribution.

2. **Intermediate Analysis:**
   - Attrition rates by different factors (e.g., age group, business travel frequency, marital status).
   - Average income and compensation metrics across different segments.
   - Job satisfaction and performance analysis.

3. **Advanced Analysis:**
   - Detailed attrition analysis based on complex combinations of factors.
   - Advanced aggregations, such as average percent salary hike and stock option levels by job role.
   - Top N lists and detailed segmented analyses.

## Getting Started

To replicate this analysis:

- `1. Clone the Repository`:
   git clone https://github.com/yourusername/hr-data-analysis.git
   cd hr-data-analysis

- `2. Set Up Your Database`:
   - Create a new database named hr_analysis.
   - Import the dataset into a table named hr_analytics.

- `3. Run the SQL Queries`:
    Execute the SQL queries provided in this repository using a SQL client or command-line tool to generate the analysis results.