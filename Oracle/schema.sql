CREATE TABLE node (
    node_id INTEGER GENERATED ALWAYS AS IDENTITY NOT NULL PRIMARY KEY,
    properties VARCHAR2(1000) CHECK (properties IS JSON)
);

CREATE TABLE edge (
    edge_id INTEGER GENERATED ALWAYS AS IDENTITY NOT NULL PRIMARY KEY,
    source_id INTEGER NOT NULL,
    target_id INTEGER NOT NULL,
    properties VARCHAR2(1000) CHECK (properties IS JSON),
    FOREIGN KEY(source_id) REFERENCES node(node_id),
    FOREIGN KEY(target_id) REFERENCES node(node_id)
);

CREATE INDEX idx_edge_source_id ON edge(source_id);
CREATE INDEX idx_edge_target_id ON edge(target_id);
