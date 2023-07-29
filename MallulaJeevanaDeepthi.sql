CREATE INDEX IND_FB ON FACEBOOK(DOB_YEAR,USERID,GENDER,AGE);


/*Write a sql query to find the total number of users who were born in the year 1999?*/
SELECT COUNT(USERID) FROM FACEBOOK WHERE DOB_YEAR=1999;


/*Write a SQL query to count the total number of social media users for each age group?*/
SELECT AGE,COUNT(USERID) FROM FACEBOOK GROUP BY AGE ORDER BY AGE;


/*Write a sql query to find total usersin social media above age 15?*/
SELECT COUNT(USERID) FROM FACEBOOK WHERE AGE>15;


/*Write a sql query to find the percentage of female users who are using social media?*/
SELECT (COUNT(CASE WHEN GENDER = 'female' THEN 1 END) * 100.0 / COUNT(USERID)) AS PERCENTAGE FROM FACEBOOK;


/*Write a sql query to find the percentage of female users above the age 17?*/
SELECT (COUNT(CASE WHEN GENDER='female' THEN 1 END) * 100.0 / COUNT(USERID)) AS PERCENTAGE FROM FACEBOOK WHERE AGE>17;