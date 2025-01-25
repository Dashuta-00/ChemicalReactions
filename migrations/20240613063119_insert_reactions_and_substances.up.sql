WITH values_to_insert AS (
    VALUES
        (1, 1, 0),
        (1, 2, 0),
        (1, 3, 1),
        (1, 4, 1),
        (2, 5, 0),
        (2, 6, 0),
        (2, 7, 1),
        (2, 2, 1),
        (3, 4, 0),
        (3, 8, 0),
        (3, 9, 1),
        (3, 2, 1),
        (3, 10, 1),
        (4, 11, 0),
        (4, 12, 0),
        (4, 13, 1),
        (4, 14, 1),
        (4, 15, 1),
        (5, 19, 0),
        (5, 16, 0),
        (5, 17, 1),
        (5, 18, 1),
        (5, 2, 1)
)
INSERT INTO "Chemical_reactions_and_substances" (reaction_id, substance_id, substance_type_id)
SELECT * FROM values_to_insert v
WHERE NOT EXISTS (
    SELECT 1 FROM "Chemical_reactions_and_substances" WHERE reaction_id = v.column1 AND substance_id = v.column2 AND substance_type_id = v.column3
);