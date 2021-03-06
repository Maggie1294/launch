DROP TABLE IF EXISTS comments;
DROP TABLE IF EXISTS groceries;


CREATE TABLE groceries (
id SERIAL PRIMARY KEY,
name VARCHAR(100)
);

CREATE TABLE comments (
id SERIAL PRIMARY KEY,
body VARCHAR(100),
grocery_id INT REFERENCES groceries(id) ON DELETE CASCADE
);
