require "sinatra"

set :bind, '0.0.0.0'  # bind to all interfaces
set :public_folder, File.join(File.dirname(__FILE__), "public")

get "/tasks" do
  @tasks = ["make dinner", "water plants", "learn Ruby"]
  erb :index
end

get "/tasks/:task_name" do
  @task_name = params[:task_name]
  erb :show
end
