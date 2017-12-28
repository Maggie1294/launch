require "pg"
require "faker"

TITLES = [
  "Roasted Brussels Sprouts",
  "Fresh Brussels Sprouts Soup",
  "Brussels Sprouts with Toasted Breadcrumbs, Parmesan, and Lemon",
  "Cheesy Maple Roasted Brussels Sprouts and Broccoli with Dried Cherries",
  "Hot Cheesy Roasted Brussels Sprout Dip",
  "Pomegranate Roasted Brussels Sprouts with Red Grapes and Farro",
  "Roasted Brussels Sprout and Red Potato Salad",
  "Smoky Buttered Brussels Sprouts",
  "Sweet and Spicy Roasted Brussels Sprouts",
  "Smoky Buttered Brussels Sprouts",
  "Brussels Sprouts and Egg Salad with Hazelnuts"
]

COMMENTS = Faker::Lorem.paragraphs(30)

# Write code to seed your database, here
def db_connection
  begin connection = PG.connect(dbname: "brussles_sprouts_recipes")
    yield(connection)
  ensure
    connection.close
  end
end


  db_connection do |conn|
    TITLES.each do |recipe|
    conn.exec_params("INSERT INTO recipes (recipe_name) VALUES ($1)", [recipe])
  end
end


db_connection do |conn|
    COMMENTS.each do |recipe|
      conn.exec("INSERT INTO comments (comment, recipe_id) VALUES ($1, $2)", [recipe, rand(1..11)])
    end
  end
