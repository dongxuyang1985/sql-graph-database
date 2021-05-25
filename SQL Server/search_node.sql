SELECT properties FROM node WHERE node_id = 1;

SELECT properties FROM node WHERE json_value(properties, '$.Name')='张三';

SELECT properties FROM node WHERE json_value(properties, '$.Label')='Person';