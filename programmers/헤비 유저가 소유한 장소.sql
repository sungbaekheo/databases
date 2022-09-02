-- https://school.programmers.co.kr/learn/courses/30/lessons/77487
-- 공간을 둘 이상 등록한 사람을 "헤비 유저"라고 부릅니다. 헤비 유저가 등록한 공간의 정보를 아이디 순으로 조회하는 SQL문을 작성
SELECT ID, NAME, PLACES.HOST_ID FROM PLACES
INNER JOIN (SELECT PLACES.HOST_ID FROM PLACES
            GROUP BY HOST_ID
            HAVING COUNT(ID) >= 2) AS HOST_TABLE
ON PLACES.HOST_ID = HOST_TABLE.HOST_ID
ORDER BY ID;