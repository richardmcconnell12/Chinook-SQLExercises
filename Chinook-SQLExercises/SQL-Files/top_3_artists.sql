-- Provide query that shows top 3 best selling artists

SELECT TOP 3 ar.Name AS ArtistName, SUM(il.quantity) AS TrackSales
FROM Artist ar
JOIN Album al ON ar.ArtistId = al.ArtistId
JOIN Track t ON al.AlbumId = t.AlbumId
JOIN InvoiceLine il ON t.TrackId = il.TrackId
JOIN Invoice i ON il.InvoiceId = i.InvoiceId
GROUP BY ar.Name
ORDER BY SUM(il.Quantity) DESC;