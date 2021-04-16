require 'sinatra'
require './config'
require './lib/ahorcado'

get '/' do
    @palabra = "-----"
    erb :index
end

post '/' do
    ahorcado = Ahorcado.new
    @palabra = ahorcado.adivinar params[:letra]
    erb :index
end