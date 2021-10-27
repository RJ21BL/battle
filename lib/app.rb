require 'sinatra/base'
require 'sinatra/reloader'

# require 'rubygems'
# require 'bundler/setup'
# Bundler.require(:default)

class BattleApp < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
     'Hello Battle!'
    # erb(:start)
  end

    run! if app_file == $0
end