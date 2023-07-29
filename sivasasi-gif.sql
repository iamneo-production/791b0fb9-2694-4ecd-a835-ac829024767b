create index IND_MOK
on FACEBOOK (USERID,DOB_YEAR,AGE,GENDER,DOB_DAY);


/*1.Write a SQL query to find the total number of users who 
were born in the year 1999?*/
select count(USERID) from FACEBOOK where DOB_YEAR=1999;

/*2.Write a SQL query to count the total number of 
social media users for each age group?*/
select AGE,count(USERID) from FACEBOOK group by AGE;


/*3.Write a SQL query to find total users in 
social media above age 15?*/
select count(USERID) from FACEBOOK where AGE>15;


/*4.Write a SQL query to find the percentage 
of female users who are using social media?*/
select (count(case when GENDER='female' then 1 END) * 100.0/count(*))
as PERCENTAGE from FACEBOOK;

/*5.Write a SQL query to find the percentage of female
 users among users above the age of 17?*/
select (count(case when GENDER='female' then 1 END) * 100.0/count(*))
as PERCENTAGE from FACEBOOK where AGE>17;