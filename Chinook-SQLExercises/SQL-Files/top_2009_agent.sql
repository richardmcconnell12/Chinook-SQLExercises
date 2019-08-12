-- Which sales agent made the most in sales in 2009?
-- Hint: Use the MAX function on a subquery

(SELECT TOP 1 e.FirstName, e.LastName, SUM(i.Total) AS Sales
FROM Employee e
JOIN Customer c ON e.EmployeeId = c.SupportRepId
JOIN Invoice i ON c.CustomerId = i.CustomerId
WHERE e.Title LIKE '%Agent%' AND YEAR(i.InvoiceDate) = 2009
GROUP BY e.EmployeeId, e.FirstName, e.LastName)
ORDER BY e.EmployeeId DESC;

