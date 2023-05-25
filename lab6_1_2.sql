SELECT name , region FROM cities 
WHERE population>=350000 ; 

SELECT cities.name , regions.name FROM cities , regions
WHERE cities.region = regions.uuid AND regions.name = 'Nord';
