use personaltrainer;

SELECT Name, Notes
FROM workout
WHERE LevelId='3' AND Notes LIKE '%YOU%';

