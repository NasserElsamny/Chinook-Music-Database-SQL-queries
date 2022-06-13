--Query 1: Which artitsts had most rock tracks?

SELECT a.Name,
       COUNT(*)
FROM Artist a
JOIN Album al ON a.ArtistId = al.ArtistId
JOIN Track t ON t.AlbumId = al.AlbumId
JOIN Genre g ON t.GenreId = g.GenreId
WHERE g.Name = 'Rock'
GROUP BY 1
ORDER BY 2 DESC
LIMIT 10;
