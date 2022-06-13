--Query 4: Which city has the best customers?

SELECT c.City,
       SUM(il.UnitPrice*il.Quantity) Total_Spent
FROM Customer c
JOIN Invoice i ON c.CustomerId = i.CustomerId
JOIN InvoiceLine il ON i.InvoiceId = il.InvoiceId
GROUP BY 1
ORDER BY 2 DESC
LIMIT 5;
