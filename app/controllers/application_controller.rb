require './config/environment'
#controls base funcitons of the application
class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, "pword_security"
  end

  get "/" do
    erb :welcome 
    #"THIS IS THE LANDING PAGE"
  end

  helpers do
    def logged_in?
      !!session[:user_id]
      #returns true if the user is the current session user.
    end
  


    def current_user
      @user || User.find_by_id(session[:user_id]) if logged_in? 
      # returns the current user or finds the user of the current session     
    end

    def redirect_if_logged_out
      redirect "/login" if !logged_in?
      #if the user is not logged in it will direct them to the log in page 
    end
  end



end
