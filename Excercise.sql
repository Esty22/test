-- 1.  create weather table and yield table
create table xx_wd_tbl (FORECAST_DATE varchar2(100), maxtemp varchar2(100), min_temp varchar2(100),precipitation varchar2(100));

create table xx_yld_data_tbl (yld_year varchar2(100),yld_data varchar2(100) );
/
--------------------------------------------------------------------------------------------------
-- 2.
-- Insert weather data into database
insert into xx_wd_tbl (FORECAST_DATE,maxtemp,min_temp,precipitation) values(19850101,-22,-128,94);
insert into xx_wd_tbl (FORECAST_DATE,maxtemp,min_temp,precipitation) values(19850102,-122,-217,0);
insert into xx_wd_tbl (FORECAST_DATE,maxtemp,min_temp,precipitation) values(19850103,-106,-244,0);
insert into xx_wd_tbl (FORECAST_DATE,maxtemp,min_temp,precipitation) values(19850104,-56,-189,0);
insert into xx_wd_tbl (FORECAST_DATE,maxtemp,min_temp,precipitation) values(19850105,11,-78,0);
insert into xx_wd_tbl (FORECAST_DATE,maxtemp,min_temp,precipitation) values(19850106,28,-50,0);
insert into xx_wd_tbl (FORECAST_DATE,maxtemp,min_temp,precipitation) values(19850107,22,-11,0);
insert into xx_wd_tbl (FORECAST_DATE,maxtemp,min_temp,precipitation) values(19850108,-6,-106,0);
insert into xx_wd_tbl (FORECAST_DATE,maxtemp,min_temp,precipitation) values(19850109,-22,-100,0);
insert into xx_wd_tbl (FORECAST_DATE,maxtemp,min_temp,precipitation) values(19850110,-39,-106,15);
/
-- -- Insert Yield data into database
insert into xx_yld_data_tbl (yld_year,yld_data) values(1985,225447);
insert into xx_yld_data_tbl (yld_year,yld_data) values(1986,208944);
insert into xx_yld_data_tbl (yld_year,yld_data) values(1987,181143);
insert into xx_yld_data_tbl (yld_year,yld_data) values(1988,125194);
insert into xx_yld_data_tbl (yld_year,yld_data) values(1989,191320);
insert into xx_yld_data_tbl (yld_year,yld_data) values(1990,201534);
insert into xx_yld_data_tbl (yld_year,yld_data) values(1991,189868);
insert into xx_yld_data_tbl (yld_year,yld_data) values(1992,240719);
insert into xx_yld_data_tbl (yld_year,yld_data) values(1993,160986);
insert into xx_yld_data_tbl (yld_year,yld_data) values(1994,255295);
/
-- Check duplicates
select FORECAST_DATE, count(FORECAST_DATE)
from xx_wd_tbl
group by FORECAST_DATE 
having count(FORECAST_DATE) >=2;
/
--
-- To get the count between two dates
select count(*) from xx_wd_tbl
where forecast_date between 19850101 and 19850107;
/
----------------------------------------------------------------------------------------------------
--3.
-- to get the max temperature
select max(maxtemp) from xx_wd_tbl;
/
-- to get the min temperature
select min(min_temp) from xx_wd_tbl;
/
-- To get total precipitation
select count(precipitation) from xx_wd_tbl;
/
----------------------------------------------------------------------------------------------------
--4.
-- to get the data through rest API
https://test.database.com/ords/xx_schema/xx_yld_data_tbl/