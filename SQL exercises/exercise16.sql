use personaltrainer;

SELECT FirstName, LastName, City
FROM Client
WHERE City LIKE '%LaPlace%' AND LastName LIKE 'L%'
OR city LIKE '%LaPlace%' AND LastName LIKE 'N%'
OR city LIKE '%La Place%' AND LastName LIKE 'M%';

