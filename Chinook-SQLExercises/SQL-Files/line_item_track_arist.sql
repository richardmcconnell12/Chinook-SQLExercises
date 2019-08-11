-- 11 and 12 together
-- Provide a query that includes the purchased track name AND artist with each invoice line item.

SELECT il.InvoiceLineId, il.InvoiceId, t.[Name], t.Composer FROM InvoiceLine il
JOIN Track t
ON t.TrackId = il.TrackId
ORDER BY il.InvoiceLineId;


SELECT * FROM InvoiceLine
SELECT * FROM Track