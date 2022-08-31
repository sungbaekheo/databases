-- https://school.programmers.co.kr/learn/courses/30/lessons/59408
-- 동물 보호소에 들어온 동물의 이름은 몇 개인지 조회하는 SQL 문
SELECT COUNT(DISTINCT NAME) FROM ANIMAL_INS
WHERE NAME != 'NULL';