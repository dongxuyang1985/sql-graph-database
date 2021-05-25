DELETE FROM node WHERE node_id = 1;

DELETE FROM node WHERE properties ->> 'Name' = '张三';

DELETE FROM node
WHERE properties ->> 'Name' = '张三'
AND properties ->> 'Label' = 'Person';