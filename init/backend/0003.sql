USE tenflix;

CREATE TABLE file_types
(
    id   INT AUTO_INCREMENT PRIMARY KEY,
    name TEXT NOT NULL
);

CREATE UNIQUE INDEX idx_file_types_name ON file_types(name);

INSERT INTO file_types (name) VALUES ('media');

CREATE TABLE IF NOT EXISTS files (
    id    UUID NOT NULL PRIMARY KEY,
    type  INT REFERENCES file_types(id)
);

ALTER TABLE medias
MODIFY uuid_media UUID;

ALTER TABLE medias
ADD CONSTRAINT fk_medias_files
FOREIGN KEY (uuid_media) REFERENCES files(id)
ON DELETE CASCADE;
