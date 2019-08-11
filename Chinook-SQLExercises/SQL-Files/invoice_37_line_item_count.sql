-- Looking at the InvoiceLine table, provide a query that COUNTs the number of line items for Invoice ID 37.

SELECT COUNT(InvoiceId) AS InvoiceItems FROM InvoiceLine
WHERE InvoiceId = 37;