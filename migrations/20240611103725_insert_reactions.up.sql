WITH values_to_insert AS (
    VALUES
        (1, 20, 100, 90, 110, 1, 'Mg3N2 + 6H2O → 3Mg(OH)2↓ + 2NH3↑'),
        (1, 20, 200, 90, 110, 1, '2H2S + SO2 → 3S↓ + 2H2O'),
        (1, 400, 500, 90, 110, 1, '2NH3 + 3CuO → 3Cu + 3H2O + N2↑'),
        (1, 20, 25, 90, 110, 1, '6KHCO3 + Fe2(SO4)3↓ → 2Fe(OH)3 + 3K2SO4 + 6CO2↑'),
        (1, 20, 25, 90, 110, 1, 'H2O2 + Ag2O -> 2Ag↓ + O2↑ + H2O')
)
INSERT INTO "Chemical_reactions" (user_id, temperature_min, temperature_max, pressure_min, pressure_max, catalyst_id, reaction_equation)
SELECT * FROM values_to_insert v
WHERE NOT EXISTS (
    SELECT 1 FROM "Chemical_reactions" WHERE reaction_equation = v.column7
);