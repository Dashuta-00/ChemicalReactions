WITH values_to_insert AS (
    VALUES
        ('порошок'),
        ('твердое тело'),
        ('жидкость'),
        ('газ')
)
INSERT INTO "Aggregate_states" (name)
SELECT * FROM values_to_insert v
WHERE NOT EXISTS (
    SELECT 1 FROM "Aggregate_states" WHERE name = v.column1
);