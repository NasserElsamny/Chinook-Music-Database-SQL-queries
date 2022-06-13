--Query 5: Media Types mostly used

SELECT m.Name, COUNT(*) purchases
FROM MediaType m
JOIN Track t
ON m.MediaTypeId=t.MediaTypeId
JOIN InvoiceLine il
ON il.TrackId=t.TrackId
GROUP BY 1
ORDER BY 2 DESC
