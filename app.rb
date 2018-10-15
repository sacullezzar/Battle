require 'sinatra'

get '/' do
  'hello!'
end

get '/secret' do
  'This is a secret page'
end

get '/named-cat' do
  p params[:name]
  @cat_name = params[:name]
  @lastname = params[:lastname]
  erb(:index)
end

get '/random-cat' do
  @cat_name = ["Amigo", "Oscar", "Viking", "Geoff", "Slayer", "Fenton"].sample
  erb(:index)
end
