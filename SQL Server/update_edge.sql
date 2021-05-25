UPDATE edge
SET properties = json_modify(properties, '$.Degree', 77)
WHERE source_id = 1 AND target_id = 2;