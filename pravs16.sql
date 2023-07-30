create index IND_PRAVS on facebook (AGE,GENDER,DOB_YEAR,USERID);
--Write a SQL query to find the total number of users who were born in the year 1999?
SELECT COUNT(*) FROM FACEBOOK WHERE DOB_YEAR=1999;


--Write a SQL query to count the total number of social media users for each age group?
SELECT AGE,COUNT(*)
FROM FACEBOOK 
GROUP BY AGE;


--Write a SQL query to find total users in social media above age 15?
SELECT COUNT(USERID)
FROM FACEBOOK
WHERE AGE>15;


--Write a SQL query to find the percentage of female users who are using social media?
SELECT(SUM(CASE WHEN GENDER = 'female'
THEN 1 ELSE 0 END)  / COUNT(*)*100) AS FEMALE_PERCENTAGE
FROM FACEBOOK;


--Write a SQL query to find the percentage of female users among users above the age of 17?
SELECT (SUM(CASE WHEN GENDER = 'female' THEN 1 end)  / count(*)*100) as FEMALE_PERCENTAGE
from FACEBOOK WHERE age>17;