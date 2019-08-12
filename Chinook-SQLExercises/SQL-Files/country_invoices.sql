-- Provide a query that shows the # of invoices per country. HINT: GROUP BY

SELECT BillingCountry, COUNT(InvoiceId) AS 'NumOfInvoices'
FROM Invoice
GROUP BY BillingCountry;