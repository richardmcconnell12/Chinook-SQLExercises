-- Provide a query that shows the total number of tracks in each playlist. 
-- The Playlist name should be include on the resulant table

SELECT pl.[Name], COUNT(t.TrackId) AS 'TrackCount'
FROM Playlist pl
JOIN PlaylistTrack pt ON pt.PlaylistId = pl.PlaylistId
JOIN Track t ON t.TrackId = pt.TrackId
GROUP BY pl.[Name];