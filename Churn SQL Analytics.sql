#select all columns in churn table
select * from churn;
#select all columns in churn table limit by 100 rows
SELECT *
  FROM churn
 LIMIT 100;
 #Remove duplicates entries from churn table
 SELECT DISTINCT * FROM churn;
 #Removing missing values from churn table
SELECT *
FROM churn
WHERE Customer_id IS NOT NULL AND gender IS NOT NULL AND income IS NOT NULL 
AND State IS NOT NULL AND Lat IS NOT NULL AND Lng IS NOT NULL AND Population IS NOT NULL 
AND Job IS NOT NULL AND Children IS NOT NULL AND Age IS NOT NULL AND Income IS NOT NULL
AND Marital IS NOT NULL AND Gender IS NOT NULL AND Churn IS NOT NULL;
#filter churn table columns by population size
SELECT *
FROM churn
WHERE Population = 955;
#filter churn table by population = 955
SELECT state, Area, Age, Gender, Churn, Income, Contract, InternetService, PaymentMethod, Tenure
FROM churn
WHERE Population = 955;
#filter churn table by population not equal to 955
SELECT state, Area, Age, Gender, Churn, Income, Contract
FROM churn
WHERE Population !=955;
#filter churn table by income, where income  is greater than 10000 
SELECT *
FROM churn
WHERE Income > 10000;
#filter churn table by income, where income  is less than 10000 
SELECT *
FROM churn
WHERE Income < 1000;
#filter churn table by marital status
SELECT *
FROM churn
WHERE Marital != 'Widowed';
#filter churn table by payment method
SELECT *
FROM churn
WHERE PaymentMethod != 'Mailed Check';
#filter churn table by payment method
SELECT *
FROM churn
WHERE PaymentMethod = 'Credit Card (automatic)';
#using logical operators 
SELECT *
FROM churn
ORDER BY Age ASC, Contract;
#using The SQL BETWEEN operator to filter churn table
SELECT *
FROM churn
WHERE Age BETWEEN 10 AND 23;
#using The SQL BETWEEN operator and range to filter churn table by income range between 800-1000 
SELECT *
FROM churn
WHERE Income >= 800 AND Income <= 1000;
#The SQL AND operator 
SELECT *
FROM churn
WHERE Churn = 'No' AND Income <= 800;
#The SQL OR operator
SELECT *
FROM churn
WHERE Children = 2 OR PaymentMethod = 'Credit Card (automatic)';
#The SQL NOT operator
SELECT *
FROM churn
WHERE Contract = 'Month-to-month'
AND Income NOT BETWEEN 1000 AND 5000;
#Order by
SELECT *
FROM churn
ORDER BY Income;
#SQL aggregate function and Counting all rows
SELECT COUNT(*)
FROM churn;
#counting Income rows
SELECT COUNT(Income)
FROM churn;
#The SQL SUM function
SELECT SUM(Income)
FROM churn;
#The SQL MIN and MAX functions
SELECT MIN(Income) AS min_Income,
       MAX(Income) AS max_Income
  FROM churn;
  #The SQL AVG function
  SELECT AVG(Income)
  FROM churn
 WHERE Income IS NOT NULL;
 #The SQL GROUP BY clause
 SELECT Income,
 COUNT(*) AS count
FROM churn
GROUP BY Income;
#Group by multiple columns
SELECT Customer_id,
       Income,
       Job,
       Area,
       PaymentMethod,
       Gender,
       COUNT(*) AS count
  FROM churn
 GROUP BY Customer_id, Income, Job, Area, PaymentMethod, Gender;
 #The SQL HAVING clause
 SELECT Customer_id,
       Income,
       Job,
       Area,
       PaymentMethod,
       Gender,
       MAX(Income) AS max_Income
  FROM churn
 GROUP BY Customer_id,
       Income,
       Job,
       Area,
       PaymentMethod,
       Gender
HAVING MAX(Income) > 20000
 ORDER BY Customer_id,
       Income,
       Job,
       Area,
       PaymentMethod,
       Gender;
       #The SQL CASE statement
       SELECT Customer_id,
       state,
       CASE WHEN Churn = 'Yes' THEN 'No'
            ELSE NULL END AS Churn
  FROM churn;
  #Adding multiple conditions to a CASE statement
  SELECT Customer_id,
       Income,
       CASE WHEN Income > 300 THEN 'over 500'
            WHEN Income > 400 THEN '600-700'
            WHEN Income > 500 THEN '550-620'
            ELSE '200 or under' END AS Income_group
  FROM churn;
  #Using SQL DISTINCT for viewing unique values
  SELECT DISTINCT Income, Age
  FROM churn;
  #Using DISTINCT in aggregations
  SELECT COUNT(DISTINCT Income) AS unique_income
  FROM churn;
  #The SQL SUM function
SELECT SUM(Population)
FROM churn;
  
 

