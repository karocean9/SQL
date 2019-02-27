SELECT DISTINCT city FROM station WHERE city  not RLIKE '^[aeiou]' 

/* Not RlIKE means not regular expression */
