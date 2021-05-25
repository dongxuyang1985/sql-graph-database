DELETE FROM node WHERE node_id = 1;

DELETE FROM node WHERE json_value(properties, '$.Name') = '张三';

DELETE FROM node
WHERE json_value(properties, '$.Name') = '张三'
AND json_value(properties, '$.Label') = 'Person';