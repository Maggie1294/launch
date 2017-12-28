require "sinatra"
require "pg"

set :bind, '0.0.0.0'  # bind to all interfaces

configure :development do
  set :db_config, { dbname: "grocery_list_development" }
end

configure :test do
  set :db_config, { dbname: "grocery_list_test" }
end

def db_connection
  begin
    connection = PG.connect(Sinatra::Application.db_config)
    yield(connection)
  ensure
    connection.close
  end
end

# FILENAME = "grocery_list.txt"

get "/" do
  redirect "/groceries"
end

get "/groceries" do
  db_connection do |conn|
    query = "SELECT * FROM groceries"
    @groceries = conn.exec(query).to_a
  end
  erb :groceries
end

# post "/groceries" do
#   File.open(FILENAME, "a") do |f|
#     f.puts params[:name]
#   end
#   redirect "/groceries"
# end

# post '/groceries' do
#   item = params["name"]
#   if !item.empty?
#   db_connection do |conn|
#     conn.exec_params("INSERT INTO groceries (name) VALUES ($1)", [name])
#   end
#
#
#   redirect '/groceries'
# end
post "/groceries" do
  item = params["name"]
  if !item.empty?
    db_connection do |conn|
      query = "INSERT INTO groceries (name) VALUES ($1)"
      data = [item]
      conn.exec_params(query,data)
    end
  end
  redirect "/groceries"
end

get "/groceries/:id" do
  db_connection do |conn|
    item = params[:id]
    query = "SELECT groceries.name, groceries.id, comments.body, comments.grocery_id
     FROM groceries
     LEFT JOIN comments ON groceries.id = comments.grocery_id
     WHERE groceries.id = #{item.to_i}
     "
     @grocery_info = conn.exec(query).to_a
  end
  erb :show
end
