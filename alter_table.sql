ALTER TABLE vocation_plan ADD name TEXT DEFAULT 'İsimsiz';
ALTER TABLE vocation_plan DROP COLUMN name;
ALTER TABLE işçiler RENAME TO people;
UPDATE vocation_plan
SET budget = 4100
WHERE employeid = 3;
UPDATE vocation_plan
SET budget = budget * 1.1
WHERE budget < 5000;