create index ind_pragna on FACEBOOK (USERID,DOB_YEAR,AGE,GENDER);

/*Write a SQL query to find the total number of users 
who were born in the year 1999?*/
SELECT COUNT(USERID) FROM FACEBOOK WHERE DOB_YEAR=1999;

/*Write a SQL query to count the 
total number of social media users for each age group?*/
SELECT AGE,COUNT(USERID) FROM FACEBOOK GROUP BY AGE ORDER BY AGE;

/*Write a SQL query to find total users 
in social media above age 15?*/
SELECT COUNT(USERID) FROM FACEBOOK WHERE AGE>15;

/*4.	Write a SQL query to 
find the percentage of female users who are using social media?*/
WITH FEMALE_USERS (FEMALE_COUNT) AS 
(SELECT COUNT(*) FROM FACEBOOK WHERE GENDER='female'),
TOTAL_USERS (TOTAL_COUNT) AS(SELECT COUNT(*) FROM FACEBOOK)

SELECT
  (FEMALE_USERS.FEMALE_COUNT / TOTAL_USERS.TOTAL_COUNT)*100 AS percentage
FROM total_users, FEMALE_USERS;

/*Write a SQL query to 
find the percentage of female users among users above the age of 17?*/
WITH FEMALE_USERS (FEMALE_COUNT) AS 
(SELECT COUNT(*) FROM FACEBOOK WHERE GENDER='female' AND AGE>17),
TOTAL_USERS (TOTAL_COUNT) AS(SELECT COUNT(*) FROM FACEBOOK WHERE AGE>17)

SELECT
  (FEMALE_USERS.FEMALE_COUNT / TOTAL_USERS.TOTAL_COUNT)*100 AS percentage
FROM total_users, FEMALE_USERS;