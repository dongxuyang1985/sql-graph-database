DELETE FROM node WHERE node_id = 1;

DELETE FROM node WHERE json_extract(properties, '$.Name') = '张三';

DELETE FROM node
WHERE json_extract(properties, '$.Name') = '张三'
AND json_extract(properties, '$.Label') = 'Person';