require './config/environment'
#controls base funcitons of the application
class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    #enable :sessions
    #set :session_secret, 
  end

  get "/" do
  "THIS IS THE LANDING PAGE"
  end

  helpers do
    def logged_in?
      !!session[:user_id]
    end
  end


    def current_user
      
    end

    def redirect_if_logged_out
    end


end
