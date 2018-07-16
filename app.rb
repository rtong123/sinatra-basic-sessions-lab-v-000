require_relative 'config/environment'

class App < Sinatra::Base

  configure do
    enable :sessions
    set :session_secret, "secret"
  end

  get '/' do
    @item = item
    params << item
    
    binding.pry
    erb :index
  end

end
