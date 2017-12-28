require "sinatra"
require "pg"

set :bind, '0.0.0.0'  # bind to all interfaces

configure :development do
  set :db_config, { dbname: "movies" }
end

configure :test do
  set :db_config, { dbname: "movies_test" }
end

def db_connection
  begin
    connection = PG.connect(Sinatra::Application.db_config)
    yield(connection)
  ensure
    connection.close
  end
end

get "/" do
  redirect '/movies'
end

get "/actors" do
  erb :'actors/index'
end

get "/movies" do
  erb :'movies/index'
end

get "/actors/:id" do
  @actors_name = params[:id]
  erb :'actors/show'
end

get "/movies/:id" do
  @movie_name = params[:id]
  erb :'movies/show'
end
