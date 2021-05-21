UPDATE node
SET properties = json_set(properties, '$.Age', 25)
WHERE node_id = 1;

UPDATE node
SET properties = json_set(properties, '$.Sex', '男')
WHERE json_extract(properties, '$.Name')='张三';