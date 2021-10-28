require 'sinatra/base'
require 'sinatra/reloader' 

class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  get '/' do
    erb :index
  end

  get '/play' do
    @player_1_name = session[:player_1_name]
    @player_2_name = session[:player_2_name]
    erb :play
  end 

  post '/names' do
    session[:player_1_name] = params[:player_1_name]
    session[:player_2_name]= params[:player_2_name]
    redirect '/play'
  end

  run! if app_file == $0
end
