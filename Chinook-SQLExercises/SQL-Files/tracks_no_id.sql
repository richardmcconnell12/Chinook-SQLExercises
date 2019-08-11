-- Provide a query that shows all the Tracks, but displays no IDs. 
-- The result should include the Album name, Media type and Genre

SELECT t.[Name], al.Title, g.[Name], mt.[Name]
FROM Track t
JOIN Album al ON al.AlbumId = t.AlbumId
JOIN MediaType mt ON mt.MediaTypeId = t.MediaTypeId
JOIN Genre g ON g.GenreId = t.GenreId
ORDER BY t.TrackId;