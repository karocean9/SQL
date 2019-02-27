# SQL
SQL Reference

# File1_SQL
Query all columns for all American cities in CITY with populations larger than 100000. The CountryCode for America is USA.

The City Table is given in the files with the name CITY.png
```
select * from CITY where countrycode ='usa' and population > 100000
```

# File2_SQL

Query a list of CITY names from STATION with even ID numbers only. You may print the results in any order, but must exclude duplicates from your answer.

The STATION Table is given in the files with the name STATION.png
```
select distinct city from STATION where ID % 2 = 0 
```
