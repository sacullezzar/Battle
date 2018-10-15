require 'sinatra'

get '/' do
  'hello!'
end

get '/secret' do
  'This is a secret page'
end

get '/cat' do
  @cat_name = ["Amigo", "Oscar", "Viking", "Geoff", "Slayer", "Fenton"].sample
  erb(:index)
end
