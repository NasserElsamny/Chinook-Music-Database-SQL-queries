##Query 2: Top 10 earning artist

SELECT a.Name,
       SUM(i.Quantity * i.UnitPrice) Earnings
FROM Artist a
JOIN Album al ON a.ArtistId = al.ArtistId
JOIN Track t ON t.AlbumId = al.AlbumId
JOIN InvoiceLine i ON t.TrackId = i.TrackId
GROUP BY 1
ORDER BY 2 DESC
LIMIT 10;
