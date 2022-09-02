-- https://school.programmers.co.kr/learn/courses/30/lessons/62284
-- 우유와 요거트를 동시에 구입한 장바구니의 아이디를 조회하는 SQL 문을 작성해주세요. 이때 결과는 장바구니의 아이디 순
SELECT A.CART_ID
FROM CART_PRODUCTS A, CART_PRODUCTS B
WHERE (A.NAME = 'Yogurt' AND B.NAME = 'Milk') AND A.CART_ID = B.CART_ID
GROUP BY A.CART_ID
ORDER BY A.CART_ID;