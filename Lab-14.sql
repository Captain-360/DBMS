--Part – A:
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

--1. List all books with their authors.

--2. List all books with their publishers. 
--3. List all books with their authors and publishers. 
--4. List all books published after 2010 with their authors and publisher and price. 
--5. List all authors and the number of books they have written. 
--6. List all publishers and the total price of books they have published. 
--7. List authors who have not written any books. 
--8. Display the total number of books written by each author along with the average price of their books. 
--9. lists each publisher along with the total number of books they have published, sorted from highest to 
--lowest. 
--10. Display number of books published each year. 