UPDATE node
SET properties = json_mergepatch(properties, '{"Age": 25}')
WHERE node_id = 1;

UPDATE node
SET properties = json_mergepatch(properties, '{"Sex": "男"}')
WHERE json_value(properties, '$.Name')='张三';