CREATE TABLE ingredient_table (
    ingredients VARCHAR(32) NOT NULL,
    -- save recipe id in python sets format: ex : "{"1", "2", "6"}" //
    recipe_id VARCHAR(2048) NOT NULL,
    alleregy VARCHAR(32), 
    PRIMARY KEY(ingredients)
);

CREATE TABLE recipe (
	recipe_id INTEGER NOT NULL,
    recipe_name VARCHAR(20) NOT NULL,
    instruction VARCHAR(1024) NOT NULL,
    cooking_time INTEGER NOT NULL,
    PRIMARY KEY(recipe_id)
);
