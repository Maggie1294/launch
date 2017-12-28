require 'sinatra'
require 'csv'
require 'pry'

get "/" do
  redirect "/grocery-list"
  # redirect "/grocery-list"
end
#
# get "/groceries" do
#   @list = CSV.readlines("grocery_list.csv", headers: true)
#   erb :index
# end
#
get "/grocery-list" do
  @list = CSV.readlines("grocery_list.csv", headers: true)
  erb :index
end

post "/grocery-list" do
  @grocery_item = params[:grocery_item]
  @item_quantity = params[:item_quantity]
  unless @grocery_item.strip.empty?
    CSV.open("grocery_list.csv", "a") do |file|
      file.puts([@grocery_item, @item_quantity])
    end
  end
  redirect "/grocery-list"
end

get "/grocery-list/:grocery_item" do

  @grocery_item = params[:grocery_item]

  erb :show
end
