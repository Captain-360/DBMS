--Part – A:
--SELECT t1.column_name, t2.column_name, t3.column_name
--FROM table1 t1
--INNER JOIN table2 t2 ON t1.common_column = t2.common_column
--INNER JOIN table3 t3 ON t2.another_column = t3.another_column;
SELECT TOP (1000) [AUTHORID]
      ,[AUTHORNAME]
      ,[COUNTRY]
  FROM [PRIYANK1].[dbo].[AUTHOR]
  SELECT TOP (1000) [BOOKID]
      ,[TITLE]
      ,[AUTHORID]
      ,[PUBLISHERID]
      ,[PRICE]
      ,[PUBLICATIONYEAR]
  FROM [PRIYANK1].[dbo].[BOOK]
  SELECT TOP (1000) [PUBLISHERID]
      ,[PUBLISHERNAME]
      ,[CITY]
  FROM [PRIYANK1].[dbo].[PUBLISHER]

--1. List all books with their authors.
SELECT A.AUTHORNAME,B.TITLE FROM AUTHOR A
JOIN
BOOK B
ON A.AUTHORID=B.AUTHORID;
--2. List all books with their publishers.
SELECT B.TITLE,P.PUBLISHERNAME FROM PUBLISHER P
JOIN
BOOK B
ON P.PUBLISHERID=B.PUBLISHERID
--3. List all books with their authors and publishers.
SELECT B.TITLE,P.PUBLISHERNAME,A.AUTHORNAME FROM BOOK B
JOIN
PUBLISHER P
ON B.PUBLISHERID=P.PUBLISHERID
JOIN
AUTHOR A
ON A.AUTHORID=B.AUTHORID
--4. List all books published after 2010 with their authors and publisher and price.
SELECT B.TITLE,A.AUTHORNAME,P.PUBLISHERNAME,B.PRICE FROM BOOK B
JOIN
AUTHOR A
ON
B.AUTHORID=A.AUTHORID
JOIN
PUBLISHER P
ON
P.PUBLISHERID=B.PUBLISHERID
WHERE B.PUBLICATIONYEAR > 2010
--5. List all authors and the number of books they have written.
SELECT A.AUTHORNAME,COUNT(B.BOOKID) FROM BOOK B
RIGHT JOIN
AUTHOR A
ON
B.AUTHORID=A.AUTHORID
GROUP BY A.AUTHORNAME
--6. List all publishers and the total price of books they have published.
SELECT P.PUBLISHERNAME,SUM(B.PRICE) FROM PUBLISHER P
JOIN 
BOOK B
ON P.PUBLISHERID=B.PUBLISHERID
GROUP BY P.PUBLISHERNAME
--7. List authors who have not written any books.
SELECT A.AUTHORNAME,COUNT(B.BOOKID) FROM BOOK B
RIGHT JOIN
AUTHOR A
ON
B.AUTHORID=A.AUTHORID
GROUP BY A.AUTHORNAME
HAVING COUNT(B.BOOKID)=0
--8. Display the total number of books written by each author along with the average price of their books.
SELECT A.AUTHORNAME,AVG(B.PRICE),COUNT(B.BOOKID) FROM AUTHOR A
LEFT JOIN 
BOOK B
ON A.AUTHORID=B.AUTHORID
GROUP BY A.AUTHORNAME
--9. lists each publisher along with the total number of books they have published, sorted from highest to 
--lowest. 
--10. Display number of books published each year. 