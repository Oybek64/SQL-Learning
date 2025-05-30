1 SELECT DISTINCT
    CASE WHEN col1 < col2 THEN col1 ELSE col2 END AS val1,
    CASE WHEN col1 < col2 THEN col2 ELSE col1 END AS val2
  FROM InputTbl;


2 SELECT *
FROM TestMultipleZero
WHERE NOT (A = 0 AND B = 0 AND C = 0 AND D = 0);

3 SELECT * 
	   FROM section1
	   WHERE id % 2 = 1;

4  SELECT MIN(id) AS SmallestID 
	   FROM section1;

5 SELECT MAX(id) AS HighestID 
	   FROM section1;

6 SELECT * 
	   FROM section1
	   WHERE name LIKE 'B%';

7 SELECT *
FROM ProductCodes 
WHERE Code LIKE '%A_%' ESCAPE 'A';
