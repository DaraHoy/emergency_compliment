require 'sinatra'
require 'sinatra/reloader'

compliments = [
  "Fist of 5, you're a 10.",
  "Must be friday, because your making me slip.",
  "Can you slack me a snippet of your number.",
  "I can tell by that body language that your a ruby."
]

colors = ["#2196F3", "#FF5722","#607D8B","#4CAF50","#03A9F4", "#673AB7","#F44336","#9C27B0"]

get '/' do
  @compliments = compliments.sample
  @colors = colors.sample
  erb :compliments
end


get '/:name' do
  @name = params[:name]
  @colors = colors.sample
  @compliments = compliments.sample
  erb :compliments
end
