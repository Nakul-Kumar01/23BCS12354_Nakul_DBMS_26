SELECT TB_1.sub_id as post_id,COUNT(TB_2.sub_id) as number_of_comments
FROM
(SELECT
DISTINCT(sub_id) FROM
Submissions
WHERE parent_id ISNULL) AS TB_1
LEFT JOIN
(SELECT sub_id,parent_id FROM
Submissions WHERE parent_id IS NOT NULL
GROUP BY sub_id,parent_id) as TB_2
ON TB_1.sub_id=TB_2.parent_id
GROUP BY TB_1.sub_id;