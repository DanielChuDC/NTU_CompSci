-- method 1
SELECT  Sname 
FROM    STUDENT 
WHERE   GPA <= ALL (SELECT GPA FROM STUDENT);

-- method 2
SELECT  Sname 
FROM    STUDENT
WHERE   GPA IN (SELECT MIN(GPA) FROM STUDENT);