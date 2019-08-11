-- How many Invoices were there in 2009 and 2011?
-- What are the respective total sales for each of those years?

SELECT COUNT(InvoiceId) AS Invoices09, SUM(Total) AS TotalSales09
FROM Invoice
WHERE InvoiceDate LIKE '%2009%';

SELECT COUNT(InvoiceId) AS InvoicesIn11, SUM(Total) AS TotalSales11
FROM Invoice
WHERE InvoiceDate LIKE '%2011%';