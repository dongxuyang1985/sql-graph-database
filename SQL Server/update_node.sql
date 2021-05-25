UPDATE node
SET properties = json_modify(properties, '$.Age', 25)
WHERE node_id = 1;

UPDATE node
SET properties = json_modify(properties, '$.Sex', '男')
WHERE json_value(properties, '$.Name')='张三';