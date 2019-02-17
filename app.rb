require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    @user_input = Piglatinize.new(params["user_input"])
  end

end
