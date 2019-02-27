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
# File3_SQL

Let N be the number of CITY entries in STATION, and let N~ be the number of distinct CITY names in STATION; query the value of N-N~ from STATION. In other words, find the difference between the total number of CITY entries in the table and the number of distinct CITY entries in the table.

```
SELECT count(CITY) - count(distinct city) from STATION 
```
# File4_SQl

Query the two cities in STATION with the shortest and longest CITY names, as well as their respective lengths (i.e.: number of characters in the name). If there is more than one smallest or largest city, choose the one that comes first when ordered alphabetically.

```
SELECT city, length(city) FROM station order by length(city) desc limit 1;
SELECT city, length(city) FROM station order by length(city) asc, city asc limit 1
```
Here asc means ascending and desc means descending order
