require 'sinatra'

get '/' do
  'hello!'
end

get '/secret' do
  'This is a secret page'
end

get '/cat' do
"<div>
  <img src='http://bit.ly/1eze8aE'>
  </div>"
end
