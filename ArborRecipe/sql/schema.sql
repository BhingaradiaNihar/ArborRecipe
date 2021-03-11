CREATE TABLE ingrediants (
    ingrediants VARCHAR(20) NOT NULL,
    recipe_id INTEGER NOT NULL,
    PRIMARY KEY(ingrediants)
);

CREATE TABLE recipie (
    instruction VARCHAR(100) NOT NULL,
    recipe_id INTEGER NOT NULL,
    recipe_name VARCHAR(20) NOT NULL,
    cooking_time INTEGER NOT NULL,
    PRIMARY KEY(recipe_id)
);
