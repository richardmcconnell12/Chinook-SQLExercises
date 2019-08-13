-- Which sales agent made the most in sales over all?

(SELECT TOP 1 e.FirstName, e.LastName, SUM(i.Total) AS Sales
FROM Employee e
JOIN Customer c ON e.EmployeeId = c.SupportRepId
JOIN Invoice i ON c.CustomerId = i.CustomerId
WHERE e.Title LIKE '%Agent%'
GROUP BY e.EmployeeId, e.FirstName, e.LastName)
ORDER BY e.EmployeeId DESC;