create database covid;
use covid;
select *from ecdc_covid_19;
alter table ecdc_covid_19 rename to covid;
alter table covid rename column countriesAndTerritories to country;
alter table covid rename column countryterritorycode to code;
alter table covid rename column popData2018 to Data;
select *from covid;
#arithmatic operator
select deaths,country from covid where deaths>100;
select cases,year from covid where cases>50;
select cases,country,deaths from covid where country='Afghanistan';
select country,(cases+deaths) as total_impact from covid;
select country,(cases-deaths) as total_death from covid;
select country,Data,(data-deaths) as remain_pop from covid;
select country,Data,(data-cases) as non_spread from covid;
select cases,deaths,country from covid where deaths=0;
select cases,country from covid where cases=0;
select dateRep,geoId,country from covid where country='Australia' and deaths between 0 and 10;

#logical operator
select cases,country from covid where cases>1000 and cases<5000;
select cases,country from covid where cases>1000 or cases<5000;
select *from covid where deaths>100 and cases>5000;
select *from covid where deaths>100 or cases>5000;
select * from covid where country!='India';
select country,data,deaths,cases from covid where data>1000000 and data<3000000;
select *from covid where deaths>100 and cases<500;
select country,deaths,cases from covid where data>100000 or data<1000000;
select *from covid where year!=2020;
select country,year,cases,deaths from covid where year!=2019 and country='Pakistan';

#special operator
#in
select *from covid where deaths in(128);
select day,year,country,deaths,cases from covid where country in('india','pakistan');
#not in
select day,year,country,cases,deaths from covid where country not in('afghanistan','pakistan','india');
select *from covid where year not in(2020);
#between
select *from covid where country='india' and cases between 10 and 200;
select country,deaths,cases,month,year,day from covid where year=2020 and deaths between 1 and 10;
#not between
select country,deaths,cases,month,year,day from covid where year=2020 and deaths not between 0 and 10;
select *from covid where country='belgium' and cases not between 0 and 500 and deaths not between 0 and 100;
#is null
select *from covid where deaths is null;
select *from covid where cases is null;
#is not null
select *from covid where deaths is not null;
select *from covid where cases is not null;
#like
select *from covid where country like'%a';# last a
select *from covid where country like'%o%';
#not like
select *from covid where country not like'%a%';
select *from covid where country not like'i%';
#any
select country,year,cases,deaths from covid where cases>any(select cases from covid where country='china');
select *from covid where deaths<any(select deaths from covid where country='algeria');
#exists
select *from covid where exists(select *from covid where cases>1000);
select *from covid where exists(select *from covid where country='china' and year=2020);
#distinct:- remove duplication
select distinct country from covid;
select distinct daterep,geoid,cases,deaths from covid;

#aggregate function
#sum
select sum(cases) as total_cases from covid;
select sum(deaths) as total_deaths from covid;
select sum(data) as total_pop from covid;
#max
select country,max(cases) as max_cases from covid group by country;
select country,max(deaths) as max_deaths from covid group by country;
select country,(max(cases)-max(deaths)) as survival from covid group by country;
#avg
select avg(cases) as avg_cases from covid;
select country, avg(deaths) as avg_deaths from covid group by country;
select country,(avg(cases)-avg(deaths)) as avg_survival from covid group by country;
#min
select country,min(cases) as min_cases from covid group by country;
select country,min(deaths) as min_deaths from covid group by country;
select country,(min(cases)-min(deaths)) as min_survival from covid group by country;
#count
select country,count(cases) as count_cases from covid group by country;
select country,count(deaths) as count_deaths from covid group by country;
select country,count(data) as count_survival from covid group by country;
#order by
select * from covid order by deaths;
select country,cases,deaths,day from covid order by cases desc;
select * from covid order by day;
select * from covid order by day desc;

#case statement
select country,deaths,
case
when deaths<10
then 'low'
when deaths between 10 and 20
then 'medium'
when deaths >20
then 'high'
else 'unknown'
end as deaths_range
from covid;
#date column
