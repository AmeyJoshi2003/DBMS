//i. Modify the database so that a particular company (eg. ABC) now in Pune

UPDATE Company SET city = 'Pune' WHERE cname = 'ABC';

//ii. Give all managers of Mbank a 10% raise. If salary is >20,000, give only 3% raise.

UPDATE Emp
SET sal = CASE
  WHEN sal > 20000 THEN sal * 1.03
  ELSE sal * 1.10
END
WHERE ename IN (SELECT mgrname FROM Manager);


//iii. Find out the names of all the employees who works in ‘Bosch’ company in city Pune

SELECT ename
FROM works
JOIN Company ON works.c_id = Company.c_id
WHERE cname = 'Bosch' AND city = 'Pune';

//iv. Delete all records in the works table for employees of a particular company (Eg, SBC Company) whose salary>50,000.

DELETE FROM works
WHERE cname = 'SBC Company' AND salary > 50000;

