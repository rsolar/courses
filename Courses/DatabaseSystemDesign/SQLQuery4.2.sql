SET STATISTICS TIME ON

SELECT AVG(speed)
FROM dbo.Laptop
WHERE price > 1000

SET STATISTICS TIME OFF