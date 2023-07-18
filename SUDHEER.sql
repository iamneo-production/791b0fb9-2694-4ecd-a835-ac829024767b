CREATE INDEX IDX_FACEBOOK ON FACEBOOK (USERID,AGE,DOB_YEAR,GENDER);


/*Write a SQL query to find the total number of users who were born in the year 1999?*/
SELECT COUNT(USERID) FROM FACEBOOK WHERE DOB_YEAR=1999;


/*Write a SQL query to count the total number of social media users for each age group?*/
SELECT AGE,COUNT(USERID) FROM FACEBOOK GROUP BY AGE;


/*Write a SQL query to find total users in social media above age 15?*/
SELECT COUNT(USERID) FROM FACEBOOK WHERE AGE>15;


/*Write a SQL query to find the percentage of female users who are using social media?*/
select 100.0 * COUNT(case when GENDER ='female' then 1 else null end)/ COUNT(USERID) as percentage 
FROM FACEBOOK;


/*Write a SQL query to find the percentage of female users among users above the age of 17?*/
select 100.0 * COUNT(case when GENDER ='female' then 1 else null end)/ COUNT(USERID) as percentage 
FROM FACEBOOK where age >17;