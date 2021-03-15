CREATE TABLE ingrediant_table (
    ingrediants VARCHAR(20) NOT NULL,
    recipe_id INTEGER NOT NULL,
    PRIMARY KEY(ingrediants)
);

CREATE TABLE recipie (
	recipe_id INTEGER NOT NULL,
    recipe_name VARCHAR(20) NOT NULL,
    instruction VARCHAR(500) NOT NULL,
    cooking_time INTEGER NOT NULL,
    PRIMARY KEY(recipe_id)
);
