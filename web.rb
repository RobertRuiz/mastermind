require "sinatra"
require 'erb'
require_relative "mastermind"
require "sinatra/reloader" if development?

$mastermind = MasterMind.new

get "/" do
  erb :welcome
end

get "/play" do
  erb :play
end

post "/guess" do
  color1 = params["color1"]
  color2 = params["color2"]
  color3 = params["color3"]
  color4 = params["color4"]

  colors = [color1, color2, color3, color4]

  result = $mastermind.guess(colors)

  if $mastermind.guess_count > 10
    redirect "/lose"
    return
  elsif $mastermind.result_win?(result)
    redirect "/win"
    return
  else
    redirect '/play'
    return
  end
end

get "/uncle" do
  $mastermind = MasterMind.new
  erb :uncle
end

get "/lose" do
  $mastermind = MasterMind.new
  erb :lose
end

get "/win" do
  $mastermind = MasterMind.new
  erb :win
end
