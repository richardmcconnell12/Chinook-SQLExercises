-- Provide a query that shows the Invoice Total, Customer name, Country and Sale Agent name for all invoices
-- and customers.

SELECT e.FirstName AS 'EmpFirstName', e.LastName AS 'EmpLastName', c.CustomerId, i.InvoiceId
FROM Employee e
JOIN Customer c ON c.SupportRepId = e.EmployeeId
JOIN Invoice i ON i.CustomerId = c.CustomerId;