require 'sinatra'
require './config'
require './lib/ahorcado'

get '/' do
    @@ahorcado = Ahorcado.new

    @palabra = @@ahorcado.print_palabra
    erb :index
end

post '/' do
    @palabra = @@ahorcado.adivinar params[:letra]
    @resultado = @@ahorcado.resultado
    erb :index
end