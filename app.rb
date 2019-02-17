require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    @new_phrase = PigLatinizer.new.piglatinize(params[:user_phrase])
    
  end

end

"eHay asway anway oldway anmay owhay ishedfay aloneway inway away iffskay inway ethay ulfGay
 ayStream andway ehay adhay onegay eightyway ourfay aysday ownay ithoutway akingtay away ishfay")
       expected "eHay asway anway oldway anmay owhay ishedfay aloneway inway away iffskay inway ethay ulfGay eamStray andway ehay adhay onegay eightyw
ay ourfay aysday ownay ithoutway akingtay away ishfay" to include "eHay asway anway oldway anmay owhay ishedfay aloneway inway away iffskay inway etha
y ulfGay ayStream andway ehay adhay onegay eightyway ourfay aysday ownay ithoutway akingtay away ishfay"
