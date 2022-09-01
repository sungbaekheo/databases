-- Products 테이블에서 CategoryID가 3, 6인 물건들 중 가격 범위 별로 저렴, 비쌈, 적당 등을 SupplierID의 내림차순으로 정렬하여 출력

SELECT ProductID, CategoryID, SupplierID, Price, (CASE
													WHEN Price < 30 THEN '저렴'
                                                    WHEN Price > 60 THEN '비쌈'
                                                    ELSE '적당'
                                                    END) AS PriceAs
FROM Products
WHERE CategoryID IN (3, 6)
ORDER BY SupplierID DESC;
