select count(id) from donations where donation > 1000;
# ans -> 3
# To count the number of records :
SELECT COUNT(*)  AS RECS FROM DONATIONS;
SELECT * FROM DONATIONS;
# ignore duplicates while using count :
SELECT COUNT(distinct AGE) FROM DONATIONS; # -> no.of distinct age from dontaions table

select sum(donation) from donations;
# ans -> 11210 (as of first 7 elements ,till vsm)


select avg(donation) from donations;
# ans -> '1868.3333'

# to make output as a alias (look at header)
select avg(donation) as 'AvgValue' from donations;



select max(donation) from donations;
#4000

select min(donation) from donations;
#20

select min(age) from donations;

