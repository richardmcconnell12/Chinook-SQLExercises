-- Provide a query that shows the invoices associated with each sales agent. 
-- The resultant table should include the Sales Agent's full name.

SELECT e.EmployeeId, e.FirstName, e.LastName, i.InvoiceId
FROM Employee e
JOIN InvoiceLine i
ON e.EmployeeId = i.InvoiceId;