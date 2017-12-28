require "sinatra"
require "pg"

set :bind, '0.0.0.0'  # bind to all interfaces

# this was uncommented,
system "psql todo < schema.sql"
system "psql todo < seeder.sql"

def db_connection
  begin
    connection = PG.connect(dbname: "todo")

    # todo = nil
    # db_connection do |conn|
    #   todo = conn.exec("SELECT name FROM tasks")
    # end
    #
    # tasks.to_a.each do |task|
    #   puts task["name"]
    # end

    yield(connection)

  ensure
    connection.close
  end
end

#ORIGINAL CODE
# get "/tasks" do
#   @tasks = File.readlines("tasks.txt")
#   erb :index
# end


get "/tasks/:task_name" do
  @task_name = params[:task_name]
  erb :show
end

#PSQL CODE
get "/tasks" do
  @tasks = db_connection { |conn| conn.exec("SELECT name FROM tasks ")}
  erb :index
end

#ORIGINAL CODE
# post "/tasks" do
#   # Read the input from the form the user filled out
#   task = params["task_name"]
#   # Open the "tasks" file and append the task
#   File.open("tasks.txt", "a") do |file|
#     file.puts(task)
#   end

#PSQL CODE
post "/tasks" do
  task = params["task_name"]

db_connection do |conn|
  conn.exec_params("INSERT INTO tasks (name) VALUES ($1)", [task])
end

  # Send the user back to the home page which shows
  # the list of tasks
  redirect "/tasks"
end
