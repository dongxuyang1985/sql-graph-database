PRAGMA foreign_keys = TRUE;

CREATE TABLE IF NOT EXISTS node (
    node_id INTEGER NOT NULL PRIMARY KEY,
    properties JSON
);

CREATE TABLE IF NOT EXISTS edge (
    edge_id INTEGER NOT NULL PRIMARY KEY,
    source_id INTEGER NOT NULL,
    target_id INTEGER NOT NULL,
    properties JSON,
    FOREIGN KEY(source_id) REFERENCES node(node_id),
    FOREIGN KEY(target_id) REFERENCES node(node_id)
);

CREATE INDEX IF NOT EXISTS idx_edge_source_id ON edge(source_id);
CREATE INDEX IF NOT EXISTS idx_edge_target_id ON edge(target_id);
