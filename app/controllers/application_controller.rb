require './config/environment'
#controls base funcitons of the application
class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get "/" do
    erb :welcome
  end

  get '/signup' do
    erb :signup
  end

end
