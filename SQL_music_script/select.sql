SELECT name, year_release
FROM albums
WHERE year_release = '2018';

SELECT max(duration)
FROM songs;

SELECT name 
FROM songs
WHERE duration > '00:03:30';

SELECT name 
FROM albums 
WHERE year_release BETWEEN '2018' AND '2020';

SELECT name 
FROM singers
WHERE surname IS NULL;

SELECT name 
FROM songs
WHERE name LIKE '%my%'

