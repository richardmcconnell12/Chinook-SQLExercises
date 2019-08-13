-- Provide a query that shows the count of customers assigned to each sales agent.

SELECT c.SupportRepId, COUNT(c.CustomerId) AS CustomerCount, e.FirstName, e.LastName 
FROM Customer c
JOIN Employee e ON e.EmployeeId = c.SupportRepId
GROUP BY c.SupportRepId, e.FirstName, e.LastName;