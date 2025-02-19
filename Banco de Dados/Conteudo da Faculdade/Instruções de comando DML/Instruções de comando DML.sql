SELECT * FROM HR.EMPLOYEES;

SELECT EMPLOYEE_ID, FIRST_NAME, LAST_NAME, SALARY, MANAGER_ID 
FROM HR.EMPLOYEES

where  MANAGER_ID IN (101, 145, 149);

SELECT EMPLOYEE_ID, FIRST_NAME, LAST_NAME, SALARY, MANAGER_ID 
FROM HR.EMPLOYEES

where  MANAGER_ID NOT IN (101, 145, 149);

SELECT EMPLOYEE_ID, FIRST_NAME, LAST_NAME, SALARY, MANAGER_ID 
FROM HR.EMPLOYEES
WHERE FIRST_NAME LIKE 'S%';