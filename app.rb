require 'sinatra'
require './config'

get '/' do
    erb :index
end

post '/' do
    erb :index
end