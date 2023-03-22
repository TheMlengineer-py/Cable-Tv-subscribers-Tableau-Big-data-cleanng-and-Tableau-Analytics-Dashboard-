#select all columns in subscribers table
select * from subscribers;
#select all columns in subscribers table limit by 100 rows
SELECT *
  FROM subscribers
 LIMIT 100;
 #Remove duplicates entries from subscribers table
 SELECT DISTINCT * FROM subscribers;
 #Removing missing values from subscribers table
SELECT *
FROM subscribers
WHERE age IS NOT NULL AND gender IS NOT NULL AND income IS NOT NULL 
AND kids IS NOT NULL AND ownHome IS NOT NULL AND subscribe IS NOT NULL AND Segment IS NOT NULL;
 #filter subscribers columns by age equals 40
SELECT *
FROM subscribers
WHERE age = 40;
#filter by age = 25
SELECT age, gender, income, kids, ownHome, subscribe, Segment
FROM subscribers
WHERE age = 25;
#filter by age not equal to 45
SELECT age, gender, income, kids, ownHome, subscribe, Segment
FROM subscribers
WHERE age !=45;
#filter by income, where income is greater than 8000
SELECT *
FROM subscribers
WHERE income > 8000;
#filter by income where income is less than 100000
SELECT *
FROM subscribers
WHERE income < 100000;
#filter by Segment, where segment is not Suburb mix
SELECT *
FROM subscribers
WHERE Segment != 'Suburb mix';
#filter by subscribe is not subYes
SELECT *
FROM subscribers
WHERE subscribe != 'subYes';
#filter by gender, female only
SELECT *
FROM subscribers
WHERE gender != 'Male';
#using logical operators 
SELECT *
FROM subscribers
ORDER BY age ASC, Segment;
#using The SQL BETWEEN operator to filter subscribers 
SELECT *
FROM subscribers
WHERE age BETWEEN 19 AND 49 order by age;
#using The SQL BETWEEN operator and range to filter subsribers by income 
SELECT *
FROM subscribers
WHERE income >= 500 AND income <= 40000 order by income;
#The SQL AND operator 
SELECT *
FROM subscribers
WHERE gender = 'Male' AND Income <= 100000 order by age;
#The SQL OR operator
SELECT *
FROM subscribers
WHERE kids = 4 OR ownHome = ('ownYes') order by kids;
#The SQL NOT operator
SELECT *
FROM subscribers
WHERE Segment = 'Suburb mix'
AND income NOT BETWEEN 1000 AND 5000 order by income;
#using Order by
SELECT *
FROM subscribers
ORDER BY income;
#SQL aggregate function and Counting all rows
SELECT COUNT(*)
FROM subscribers;
#counting income rows
SELECT COUNT(income)
FROM subscribers;
#The SQL SUM function
SELECT SUM(income)
FROM subscribers;
#The SQL MIN and MAX functions
SELECT MIN(income) AS min_Income,
       MAX(income) AS max_Income
  FROM subscribers;
  #The SQL AVG function
  SELECT AVG(income)
  FROM subscribers
 WHERE income IS NOT NULL group by gender;
 #The SQL GROUP BY clause
 SELECT income,
 COUNT(*) AS count
FROM subscribers
GROUP BY income;
#Group by multiple columns
SELECT age,
       gender,
       income,
       kids,
       ownHome,
       subscribe,
       Segment,
       COUNT(*) AS count
  FROM subscribers
 GROUP BY age, gender, income, kids, ownHome, subscribe, Segment;
  #The SQL HAVING clause
 SELECT age,
       gender,
       income,
       kids,
       ownHome,
       subscribe,
       Segment,
       MAX(income) AS max_Income
  FROM subscribers
 GROUP BY age,
       gender,
       income,
       kids,
       ownHome,
       subscribe,
       Segment
HAVING MAX(income) > 50000
 ORDER BY age,
       gender,
       income,
       kids,
       ownHome,
       subscribe,
       Segment;
       #The SQL CASE statement
       SELECT age,
       gender,
       CASE WHEN ownHome = 'ownNo' THEN 'ownYes'
            ELSE NULL END AS ownHome
  FROM subscribers;
  #Adding multiple conditions to a CASE statement
  SELECT age,
       income,
       CASE WHEN income > 300 THEN 'over 500'
            WHEN income > 400 THEN '600-700'
            WHEN income > 500 THEN '550-620'
            ELSE '200 or under' END AS Income_group
  FROM subscribers;
  #Using SQL DISTINCT for viewing unique values
  SELECT DISTINCT income, age
  FROM subscribers;
  #Using DISTINCT in aggregations
  SELECT COUNT(DISTINCT income) AS unique_income
  FROM subscribers;
  