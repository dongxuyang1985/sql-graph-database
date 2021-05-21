WITH RECURSIVE traverse(id, relation, hops) AS (
  SELECT node_id, cast(node_id AS CHAR(100)), 0 FROM node WHERE json_extract(properties, '$.Name')='张三'
  UNION ALL
  SELECT target_id, CONCAT(relation,'->',target_id), hops + 1 FROM edge JOIN traverse ON source_id = id
)
SELECT id, relation, hops
FROM traverse
WHERE id = (SELECT node_id FROM node WHERE json_extract(properties, '$.Name')='王五');