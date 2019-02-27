SELECT city, length(city) FROM station order by length(city) desc limit 1;
SELECT city, length(city) FROM station order by length(city) asc, city asc limit 1;
