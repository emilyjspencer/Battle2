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
    @player_1_name = session[:Player_1].name
    @player_2_name = session[:Player_2].name
    erb(:play)
  end

  post '/attack' do
    @player_1_name = session[:Player_1].name
    @player_2_name = session[:Player_2].name
    erb(:attack)
  end

  run! if app_file == $0
end