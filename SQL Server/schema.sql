CREATE TABLE node (
    node_id BIGINT IDENTITY NOT NULL PRIMARY KEY,
    properties VARCHAR(MAX) CHECK ( ISJSON(properties)>0 )
);

CREATE TABLE edge (
    edge_id BIGINT IDENTITY NOT NULL PRIMARY KEY,
    source_id BIGINT NOT NULL,
    target_id BIGINT NOT NULL,
    properties VARCHAR(MAX) CHECK ( ISJSON(properties)>0 ),
    FOREIGN KEY(source_id) REFERENCES node(node_id),
    FOREIGN KEY(target_id) REFERENCES node(node_id)
);

CREATE INDEX idx_edge_source_id ON edge(source_id);
CREATE INDEX idx_edge_target_id ON edge(target_id);
