create index IND_MOK
on FACEBOOK (USERID,DOB_YEAR,AGE);


select count(USERID) from FACEBOOK where DOB_YEAR=1999;

select count(USERID),AGE from FACEBOOK group by AGE;

select count(USERID) from FACEBOOK where AGE>15;

create index IND_HANU
on FACEBOOK (AGE,GENDER);

select (count(case when GENDER='male' then 1 END) * 100.0/count(*))
as PERCENTAGE from FACEBOOK;

select (count(case when GENDER='male' then 1 END) * 100.0/count(*))
as PERCENTAGE from FACEBOOK where AGE>17;