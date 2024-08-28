CREATE EXTENSION IF NOT EXISTS pgroonga;
CREATE INDEX text_pgroonga_index ON documents USING pgroonga (text);
CREATE INDEX title_pgroonga_index
ON documents
USING pgroonga (title pgroonga_varchar_full_text_search_ops_v2);