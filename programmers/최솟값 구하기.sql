-- https://school.programmers.co.kr/learn/courses/30/lessons/59038
-- 동물 보호소에 가장 먼저 들어온 동물은 언제 들어왔는지 조회하는 SQL 문
SELECT MIN(DATETIME) FROM ANIMAL_INS;