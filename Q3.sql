--Query 3: Who is the best customer?

SELECT c.FirstName || ' ' || c.LastName Customer_Name,
       c.CustomerId,
       SUM(il.UnitPrice*il.Quantity) Total_Spent
FROM Customer c
JOIN Invoice i ON c.CustomerId = i.CustomerId
JOIN InvoiceLine il ON i.InvoiceId = il.InvoiceId
GROUP BY 1
ORDER BY 3 DESC
LIMIT 10;
