--Date Functions 
--Part – A: 
--1. Write a query to display the current date & time. Label the column Today_Date.
SELECT GETDATE();
--2. Write a query to find new date after 365 day with reference to today.
SELECT GETDATE()+365;
--3. Display the current date in a format that appears as may 5 1994 12:00AM.
SELECT DATENAME(MONTH,GETDATE()),DATENAME(DAY,GETDATE()),DATENAME(YEAR,GETDATE()),DATENAME(HOUR,GETDATE());
--4. Display the current date in a format that appears as 03 Jan 1995.
SELECT FORMAT(CAST('03 Jan 1995' AS DATETIME),'dd MMM yyyy')
--5. Display the current date in a format that appears as Jan 04, 96.
SELECT FORMAT(GETDATE(),'MMM dd, yy')
--6. Write a query to find out total number of months between 31-Dec-08 and 31-Mar-09.
SELECT DATEDIFF(MONTH,'31-Dec-08','31-Mar-09')
--7. Write a query to find out total number of hours between 25-Jan-12 7:00 and 26-Jan-12 10:30.
SELECT DATEDIFF(HOUR,'25-Jan-12 7:00','26-Jan-12 10:30')
--8. Write a query to extract Day, Month, Year from given date 12-May-16.
SELECT DATEPART(DAY,'12-May-16'),DATEPART(MONTH,'12-May-16'),DATEPART(YEAR,'12-May-16')
--9. Write a query that adds 5 years to current date.
SELECT DATEADD(YEAR,5,GETDATE())
--10. Write a query to subtract 2 months from current date.
SELECT DATEADD(MONTH,-2,GETDATE())
--11. Extract month from current date using datename () and datepart () function.
SELECT DATENAME(MONTH,GETDATE())
SELECT DATEPART(MONTH,GETDATE())
--12. Write a query to find out last date of current month.
SELECT EOMONTH(GETDATE())
--13. Calculate your age in years and months. 
SELECT DATEDIFF(YEAR,'2005-12-24',GETDATE())
SELECT DATEDIFF(MONTH,'2005-12-24',GETDATE())
SELECT DATEDIFF(DAY,'2005-12-24',GETDATE())
--Part – B: Perform following queries on DEPOSIT table.
SELECT TOP (1000) [ACTNO]
      ,[CNAME]
      ,[BNAME]
      ,[AMOUNT]
      ,[ADATE]
  FROM [PRIYANK1].[dbo].[DEPOSITE]
--14. Display all records where account date is in the year 2025.
SELECT * FROM DEPOSITE
WHERE DATENAME(YEAR,ADATE)=2025;
--15. Display all records where account date is in the month of March.
SELECT 
--16. Display records where account date is after ‘01-Jan-2025’. 
--17. Display records where account date is before ‘01-Jan-2025’. 
--18. Display records where day of account date is 1. 
--19. Display records where month of account date is greater than 6. 
--20. Display records where year of account date is 2026. 
--21. Display number of accounts opened in each year. 
--22. Display number of accounts opened in each month. 
--23. Display maximum amount deposited in each year. 
 
--Part – C: 
--24. Display minimum amount deposited in each month. 
--25. Display total amount deposited in each year. 
--26. Display records where account date is between ‘01-Mar-2025’ and ‘31-Dec-2025’. 
--27. Display records where account date is in the current year. 
--28. Display difference in days between today’s date and account date.