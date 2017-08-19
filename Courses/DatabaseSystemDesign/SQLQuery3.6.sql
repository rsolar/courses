SET STATISTICS TIME ON

SELECT DISTINCT maker
FROM dbo.Product
WHERE model IN (SELECT model
	FROM dbo.PC
	WHERE ram <= ALL (SELECT ram
			FROM dbo.PC)
		AND speed >= ALL (SELECT speed
			FROM dbo.PC))

SET STATISTICS TIME OFF