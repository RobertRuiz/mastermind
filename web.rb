require "sinatra"
require 'haml'
require_relative "mastermind"
require "sinatra/reloader" if development?

$mastermind = MasterMind.new

get "/" do
  haml :welcome
end

get "/play" do
  haml :play
end

post "/guess" do
  # Get the colors from the form
  # Robert writes code here to pull the colors from the #submit button on the play URL
  # color1, color2, color3, color4
  # params[guess.color1]
  # params[guess.color2]
  # params[guess.color3]
  # params[guess.color4]
  # use "p" to output them to the terminal for debugging
  # p __________
  # p guess[]
  color1 = params["color1"]
  color2 = params["color2"]
  color3 = params["color3"]
  color4 = params["color4"]

  p color1
  p color2
  p color3
  p color4
  # Go back to play
  redirect '/play'
end

get "/uncle" do
  haml :uncle
end

get "/lose" do
  haml :lose
end

get "/win" do
  haml :win
end
