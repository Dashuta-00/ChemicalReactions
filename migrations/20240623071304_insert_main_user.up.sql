WITH values_to_insert AS (
    VALUES
        ('User', '$2a$04$HM3qL6x8Ri2fC7sVCHuWXe9TejxvoVpNrvkS4vKUpk6W3mvLbhxwq')
)
INSERT INTO "Users" (user_name, encrypted_password)
SELECT * FROM values_to_insert v
WHERE NOT EXISTS (
    SELECT 1 FROM "Users" WHERE user_name = v.column1
);