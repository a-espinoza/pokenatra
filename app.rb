require "sinatra"
require "sinatra/reloader"
require "active_record"

require_relative "db/connection"

require_relative "models/pokemon"
require_relative "models/trainer"
require_relative "models/team"

get '/pokemon' do
  @pokemon = Pokemon.all
  erb :"pokemon/index"
end

get '/pokemon/new' do
  erb :"pokemon/new"
end

post '/pokemon' do
  @pokemon = Pokemon.create(params[:pokemon])
  redirect "/pokemon/#{@pokemon.id}"
end

get "/pokemon/:id/edit" do
  @pokemon = Pokemon.find(params[:id])
  erb(:"pokemon/edit")
end

put '/pokemon/:id' do
  @pokemon = Pokemon.find(params[:id])
  @pokemon.update(params[:pokemon])
  redirect "/pokemon/#{@pokemon.id}"
end

delete '/pokemon/:id' do
  @pokemon = Pokemon.find(params[:id])
  @pokemon.destroy
  redirect "/pokemon"
end

get '/pokemon/:id' do
  @pokemon = Pokemon.find(params[:id])
  erb :"pokemon/show"
end

#

get '/team' do
  @team = Team.all
  erb :"team/index"
end

get '/team/new' do
  erb :"team/new"
end

post '/team' do
  @team = Team.create(params[:team])
  redirect "/team/#{@team.id}"
end

get "/team/:id/edit" do
  @team = Team.find(params[:id])
  erb(:"team/edit")
end

put '/team/:id' do
  @team = Team.find(params[:id])
  @team.update(params[:team])
  redirect "/team/#{@team.id}"
end

delete '/team/:id' do
  @team = Team.find(params[:id])
  @team.destroy
  redirect "/team"
end

get '/team/:name' do
 @team = Team.find_by(name: params[:name].capitalize)
 erb :"team/show"
end
