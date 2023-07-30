create index keerthana on facebook (userid,DOB_year);
create index keerthana_1 on facebook (gender,age);


/*1. Write a SQL Query to find the total number of users who were born in the year 1999?*/
select count(*) from facebook where dob_year=1999;


/*2. Write a SQL Query to count the number of social media users for each age group?*/
select Age,count(userid) from facebook group by age;



/*3. Write a SQL Query to find total users in social media above age 15?*/
select count(*) from facebook where age>15;


/*4. Write a SQL Query to find the percentage of female users who are using social media?*/
select count(userid)*100 /(select count(userid) from facebook )
from facebook where gender='female' group by gender ;


/*5. Write a SQL Query to find the percentage of female users among users above the age of 17?*/
select count(userid)*100 /(select count(userid) from facebook where age>17)
from facebook where gender='female' and age>17 group by gender; 