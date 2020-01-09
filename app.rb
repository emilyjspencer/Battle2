require 'sinatra/base'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:Player_1] = Player.new(params[:Player_1])
    session[:Player_2] = Player.new(params[:Player_2])
    redirect '/play'
  end

  get '/play' do
    @player_1 = session[:Player_1]
    @player_2 = session[:Player_2]
    erb(:play)
  end

  post '/attack' do
    @player_1 = session[:Player_1]
    @player_2 = session[:Player_2]
    erb(:attack)
  end

  run! if app_file == $0
end