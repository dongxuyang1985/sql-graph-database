UPDATE node
SET properties = jsonb_set(properties, '{Age}', '25')
WHERE node_id = 1;

UPDATE node
SET properties = jsonb_set(properties, '{Sex}', '"男"')
WHERE properties ->> 'Name'='张三';