create index shirisha on facebook (USERID,DOB_YEAR,DOB_DAY,AGE,GENDER);

--1.	Write a SQL query to find the total number of users who were born in the year 1999?*/
SELECT COUNT(USERID) FROM FACEBOOK WHERE DOB_YEAR=1999;

--2.	Write a SQL query to count the total number of social media users for each age group?*/
SELECT AGE,COUNT(USERID) FROM FACEBOOK GROUP BY AGE;

--3.	Write a SQL query to find total users in social media above age 15?*/
SELECT COUNT(USERID) FROM FACEBOOK WHERE AGE>15;

--4.	Write a SQL query to find the percentage of female users who are using social media?*/
 SELECT COUNT (USERID)*100 /(SELECT COUNT(USERID) FROM FACEBOOK )
  FROM FACEBOOK WHERE GENDER='FEMALE' GROUP BY GENDER;

--5.	Write a SQL query to find the percentage of female users among users above the age of 17?*/
SELECT COUNT (USERID)*100 /(SELECT COUNT(USERID) FROM FACEBOOK WHERE AGE>17)
   FROM FACEBOOK WHERE GENDER='FEMALE' AND AGE>17 GROUP BY GENDER;