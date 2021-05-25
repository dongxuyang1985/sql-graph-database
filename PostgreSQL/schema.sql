CREATE TABLE IF NOT EXISTS node (
    node_id BIGINT NOT NULL GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    properties JSONB
);

CREATE TABLE IF NOT EXISTS edge (
    edge_id BIGINT NOT NULL GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    source_id BIGINT NOT NULL,
    target_id BIGINT NOT NULL,
    properties JSONB,
    FOREIGN KEY(source_id) REFERENCES node(node_id),
    FOREIGN KEY(target_id) REFERENCES node(node_id)
);

CREATE INDEX IF NOT EXISTS idx_edge_source_id ON edge(source_id);
CREATE INDEX IF NOT EXISTS idx_edge_target_id ON edge(target_id);
