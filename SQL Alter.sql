use moviecatalogue;

ALTER TABLE Actor ADD DateOfDeath date NULL;

UPDATE Actor
SET DateOfDeath = '1994/3/4'
WHERE ActorID = 3;