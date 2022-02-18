-- Creating Table

CREATE TABLE animals(
 id INTEGER PRIMARY KEY,
 species TEXT,
 name TEXT ,
 age INTEGER,
 is_fed INTEGER DEFAULT 0,
 fav_food TEXT
);

-- Populating the Zoo
INSERT INTO animals(species, name, age, is_fed, fav_food)
VALUES ("Dog", "Rex", 10, 1, "Meat"),
("Cat", "Pus", 5, 1, "Fish"),
("Big Cat", "MUFASA", 20, 1, "Hyena"),
("Long Neck Animal", "Longyy", 2, 1, "Leaves"),
("Slippery thing", "Snape", 6, 1, "Humans");

-- Updating Some Animal
--Updating Dog to not fed
UPDATE animals SET is_fed = 0
WHERE id = 1

-- Updating Mufasas name and making him hungry
UPDATE animals SET name = "Mufasa", is_fed = 0
WHERE id = 3

-- Making him old
UPDATE animals SET age = 50
WHERE id = 3

-- Updating Snape age 
UPDATE animals SET age = 40
WHERE id = 5

-- Guess what? Mufasa Died
DELETE FROM animals
WHERE id = 3

-- Removing the fav_food column
ALTER TABLE animals DROP COLUMN fav_food

-- Adding Origin with a defalut location of "Unknown"
ALTER TABLE animals ADD origin TEXT DEFAULT "Unknown";

-- Adding some Origin
UPDATE animals SET origin = "Hogwarts"
WHERE id = 5

UPDATE animals SET origin = "Africa"
WHERE id = 4

-- Challenge
-- - Can you feed all the animals using just one command?
-- Yes
UPDATE animals SET is_fed = 1


