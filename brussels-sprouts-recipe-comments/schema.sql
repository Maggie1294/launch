-- Define the structure of your database, here.
DROP TABLE IF EXISTS recipes;
DROP TABLE IF EXISTS comments;



CREATE TABLE recipes(
  id serial PRIMARY KEY,
  recipe_name varchar(225)
);


CREATE TABLE comments(
  id serial PRIMARY KEY,
  comment varchar(5000),
  recipe_id integer,
  FOREIGN KEY (recipe_id) REFERENCES recipes(id)
);


-- How many recipes are there in total?
"SELECT COUNT (id) FROM recipes;"

-- How many comments are there in total?
"SELECT COUNT (id) FROM comments;"

-- Add a new recipe titled Brussels Sprouts with Goat Cheese. Add two comments to it.
"INSERT INTO recipes (recipe_name) VALUES ('Brussels Sprouts with Goat Cheese');"
"INSERT INTO comments (comment) VALUES ('Goat cheese with anything is great.', 'Brussels sprouts are like tiny cabbages.');"
"SELECT recipes.recipe_name, comments.comment
FROM recipes
WHERE recipes.recipe_name = 'Brussels Sprouts with Goat Cheese'
AND comments.comment = VALUES ('Goat cheese with anything is great.', 'Brussels sprouts are like tiny cabbages.')
INNER JOIN comments
ON recipes.id=comments.id;"

-- How would you find out how many comments each of the recipes have? (Optional)ID here is just used as an example, could be any record
"SELECT COUNT(*) FROM comments WHERE id = 1;"


-- What is the name of the recipe that is associated with a specific comment? (Optional)
"SELECT recipe_name FROM recipes JOIN comments ON recipes.id = comments.id;"
