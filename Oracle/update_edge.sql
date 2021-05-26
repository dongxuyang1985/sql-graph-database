UPDATE edge
SET properties = json_mergepatch(properties, '{"Degree": 77}')
WHERE source_id = 1 AND target_id = 2;