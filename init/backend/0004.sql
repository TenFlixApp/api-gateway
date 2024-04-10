ALTER TABLE users
MODIFY uuid_avatar UUID NOT NULL;

ALTER TABLE users
SET DEFAULT uuid_avatar = '00000000-0000-0000-0000-000000000000';

ALTER TABLE users
ADD CONSTRAINT users_uuid_avatar_files
FOREIGN KEY (uuid_avatar) REFERENCES files(id)
ON DELETE CASCADE;

INSERT INTO file_types (name) VALUES ('avatar');

INSERT INTO files(id, type) VALUES ('00000000-0000-0000-0000-000000000000', (SELECT id FROM file_types WHERE name = 'avatar'));
