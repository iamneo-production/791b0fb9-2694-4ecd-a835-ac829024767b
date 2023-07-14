create index IND_MOK
on FACEBOOK (USERID,DOB_YEAR);


select count(USERID) from FACEBOOK where DOB_YEAR=1999;