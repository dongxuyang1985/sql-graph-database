UPDATE edge
SET properties = jsonb_set(properties, '{Degree}', '77')
WHERE source_id = 1 AND target_id = 2;