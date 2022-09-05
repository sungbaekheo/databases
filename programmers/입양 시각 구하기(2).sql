-- https://school.programmers.co.kr/learn/courses/30/lessons/59413
-- 0시부터 23시까지, 각 시간대별로 입양이 몇 건이나 발생했는지 조회하는 SQL문을 작성해주세요. 이때 결과는 시간대 순으로 정렬

WITH RECURSIVE TIMELINE AS (
    SELECT 0 AS HOUR
    UNION ALL
    SELECT HOUR + 1 FROM TIMELINE
    WHERE HOUR < 23
)

SELECT TIMELINE.HOUR, (CASE WHEN COUNT IS NULL THEN 0
                            WHEN COUNT IS NOT NULL THEN COUNT
                       END) AS COUNT
FROM TIMELINE
LEFT JOIN (SELECT HOUR(DATETIME) AS HOUR, COUNT(ANIMAL_ID) AS COUNT
           FROM ANIMAL_OUTS
           GROUP BY HOUR
           ORDER BY HOUR) AS OUTS
ON TIMELINE.HOUR = OUTS.HOUR
ORDER BY TIMELINE.HOUR
;