WITH values_to_insert AS (
    VALUES
        ('реагент'),
        ('продукт')
)
INSERT INTO "Chemical_substance_types" (name)
SELECT * FROM values_to_insert v
WHERE NOT EXISTS (
    SELECT 1 FROM "Chemical_substance_types" WHERE name = v.column1
);