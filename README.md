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
# File4_SQL

Query the two cities in STATION with the shortest and longest CITY names, as well as their respective lengths (i.e.: number of characters in the name). If there is more than one smallest or largest city, choose the one that comes first when ordered alphabetically.

```
SELECT city, length(city) FROM station order by length(city) desc limit 1;
SELECT city, length(city) FROM station order by length(city) asc, city asc limit 1
```
Here asc means ascending and desc means descending order

# File5_SQL

Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION. Your result cannot contain duplicates.

```
select distinct city from STATION where city like 'A%' or city like 'E%' or city like 'I%' or city like 'O%' or city like 'U%'
```

# File6_SQL

Query the list of CITY names ending with vowels (a, e, i, o, u) from STATION. Your result cannot contain duplicates.

```
select distinct city from STATION where city like '%A' or city like '%E' or city like '%I' or city like '%O' or city like '%U' 
```

# File7_SQL

Query the list of CITY names from STATION which have vowels (i.e., a, e, i, o, and u) as both their first and last characters. Your result cannot contain duplicates.

```
SELECT DISTINCT city FROM station WHERE city RLIKE '^[aeiou].*[aeiou]$'
```
here RLIKE is a regular expression

# File8_SQL

Query the list of CITY names from STATION that do not start with vowels. The result cannot contain duplicates.

```
SELECT DISTINCT city FROM station WHERE city  not RLIKE '^[aeiou]' 
```

# File9_SQL

Query the list of CITY names from STATION that do not end with vowels. Your result cannot contain duplicates.

```
SELECT DISTINCT city FROM station WHERE city RLIKE '.*[aeiou]$' = 0
```

# File10_SQL

Query the Name of any student in STUDENTS who scored higher than 75 Marks. Order your output by the last three characters of each name. If two or more students both have names ending in the same last three characters (i.e.: Bobby, Robby, etc.), secondary sort them by ascending ID.

The STUDENTS table is given in the files as STUDENTS.png

```
select  name from STUDENTS where Marks > 75 ORDER BY  RIGHT(name, 3), ID ASC
```
Here order by right means order the characters from right and the number defines last 3 characters and ASC means ascending order.

