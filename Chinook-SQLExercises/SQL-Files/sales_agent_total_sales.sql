-- Provide a query that shows total sales made by each sales agent

SELECT i.InvoiceId, COUNT(il.InvoiceLineId) AS InvoiceCount
From Invoice i
JOIN InvoiceLine il ON il.InvoiceId = i.InvoiceId
GROUP BY i.InvoiceId;