-- Provide a query that shows all Invoices but includes the # of invoice line items

SELECT InvoiceLineId, COUNT(InvoiceId) as InvoiceCount
FROM InvoiceLine
GROUP BY InvoiceLineId;