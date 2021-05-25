INSERT INTO edge(source_id, target_id, properties)
VALUES((SELECT node_id FROM node WHERE properties ->> 'Name'='张三'),
       (SELECT node_id FROM node WHERE properties ->> 'Name'='李四'), '{"Label":"关注", "Degree": 80}');
INSERT INTO edge(source_id, target_id, properties)
VALUES((SELECT node_id FROM node WHERE properties ->> 'Name'='李四'),
       (SELECT node_id FROM node WHERE properties ->> 'Name'='王五'), '{"Label":"关注", "Degree": 90}');
INSERT INTO edge(source_id, target_id, properties)
VALUES((SELECT node_id FROM node WHERE properties ->> 'Name'='张三'),
       (SELECT node_id FROM node WHERE properties ->> 'Name'='王五'), '{"Label":"关注", "Degree": 60}');