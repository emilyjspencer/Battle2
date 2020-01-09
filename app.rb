require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:game] = Game.new(Player.new(params[:Player_1]), Player.new(params[:Player_2]))
    redirect '/play'
  end

  get '/play' do
    @game = session[:game]
    erb(:play)
  end

  post '/attack' do
    @game = session[:game]
    session[:game].attack(2)
    erb(:attack)
  end

  run! if app_file == $0
end