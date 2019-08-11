-- Looking at the InvoiceLine table, 
-- provide a query that COUNTs the number of line items for each Invoice. HINT: GROUP BY

SELECT COUNT(UnitPrice) FROM InvoiceLine
GROUP BY InvoiceId;