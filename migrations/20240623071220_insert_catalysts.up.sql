WITH values_to_insert AS (
    VALUES
        ('empty', '{empty}', 1, 0)
)
INSERT INTO "Catalysts" (name, formula, state_id, color)
SELECT * FROM values_to_insert v
WHERE NOT EXISTS (
    SELECT 1 FROM "Catalysts" WHERE name = v.column1
);