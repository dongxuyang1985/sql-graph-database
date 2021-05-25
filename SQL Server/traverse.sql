WITH traverse(id, relation, hops) AS (
  SELECT node_id, CAST(node_id AS VARCHAR), 0 FROM node WHERE json_value(properties, '$.Name')='张三'
  UNION ALL
  SELECT target_id, CAST(CONCAT(relation,'->',target_id) AS VARCHAR), hops + 1 
  FROM edge JOIN traverse ON source_id = id
)
SELECT id, relation, hops
FROM traverse
WHERE id = (SELECT node_id FROM node WHERE json_value(properties, '$.Name')='王五');