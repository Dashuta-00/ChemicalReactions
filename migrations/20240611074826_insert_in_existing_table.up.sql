WITH values_to_insert AS (
    VALUES
        ('Mg3N2', 'Магния нитрид', -755014145, 90, 800, 90, 110, 1, TRUE),
        ('H2O', 'Вода', -128, 90,100, 90,  110, 3, TRUE),
        ('Mg(OH)2', 'Магния гидроксид', -1, 0, 400, 90,  110, 1, TRUE),
        ('NH3', 'Аммиак', -128, -33, 100, 90,  110, 4, TRUE),
        ('H2S', 'Сероводород', -128, -60, 100, 90,  110, 4, TRUE),
        ('SO2', 'Диоксид серы', -128, -10, 100, 90,  110, 4, TRUE),
        ('S', 'Сера', -167804161, 0, 115, 90,  110, 1, TRUE),
        ('CuO', 'Оксид меди(II)', 90, 0, 1200, 90,  110, 1, TRUE),
        ('Cu', 'Медь', -3237121, 0, 1084, 90,  110, 2, TRUE),
        ('N2', 'Азот', -3237121, -273, -210, 90,  110, 1, TRUE),
        ('KHCO3', 'Калия бикарбонат',  -1, 0, 100, 90,  110, 1, TRUE),
        ('Fe2(SO4)3', 'Железный(III) сульфат', -1507454465, 0, 480, 90,  110, 1, TRUE),
        ('Fe(OH)3', 'Гидроксид железа(III)', 1628834559, 0, 450, 90,  110, 1, TRUE),
        ('K2SO4', 'Калия сульфат', -1, 0, 1069, 90,  110, 1, TRUE),
        ('CO2)', 'Углекислый газ', -128, -56, 2000, 90,  110, 4, TRUE),
        ('Ag2O', 'Оксид серебра', 255, 0, 300, 90,  110, 1, TRUE),
        ('Ag', 'Серебро', -1061109505, 0, 2162, 90,  110, 1, TRUE),
        ('O2', 'Кислород', -128, -219, 100, 90,  110, 4, TRUE)
)

INSERT INTO "Chemical_substances" (formula, name, color, temperature_min, temperature_max, pressure_min, pressure_max, aggregate_state_id, is_concentrated)
SELECT * FROM values_to_insert v
WHERE NOT EXISTS (
    SELECT 1 FROM "Chemical_substances" WHERE name = v.column2
);