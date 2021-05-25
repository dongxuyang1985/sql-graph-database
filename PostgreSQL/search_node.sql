SELECT properties FROM node WHERE node_id = 1;

SELECT properties FROM node WHERE properties ->> 'Name'='张三';

SELECT properties FROM node WHERE properties ->> 'Label'='Person';