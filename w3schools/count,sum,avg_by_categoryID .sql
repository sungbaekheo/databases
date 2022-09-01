-- 카테고리별로 count, sum, avg 구하기
SELECT CategoryID, SUM(Price), AVG(Price), COUNT(Price) FROM Products
GROUP BY CategoryID;