require "sinatra"
require 'haml'
require_relative "mastermind"
require "sinatra/reloader" if development?

get "/" do
  haml :welcome
end

get "/play" do
  haml :play
end

post "/guess" do
  haml :guess
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
