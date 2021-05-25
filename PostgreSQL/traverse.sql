WITH RECURSIVE traverse(id, relation, hops) AS (
  SELECT node_id, CAST(node_id AS TEXT), 0 FROM node WHERE properties ->> 'Name'='张三'
  UNION ALL
  SELECT target_id, relation||'->'||target_id, hops + 1 FROM edge JOIN traverse ON source_id = id
)
SELECT id, relation, hops
FROM traverse
WHERE id = (SELECT node_id FROM node WHERE properties ->> 'Name'='王五');