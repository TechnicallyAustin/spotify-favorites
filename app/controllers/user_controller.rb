require './config/environment'
# controller for the user class routes
class UserController < ApplicationController

    configure do
        set :public_folder, 'public'
        set :views, 'app/views'
    end

    get '/signup' do
        erb :'user/signup'
      end
    
    post '/signup' do 
        "SIGN UP SUCCESSFUL, REDIRECT USER TO LOGIN PAGE"
        user = User.new(params)
        if user.save 
            session[:user_id] = user.id
            redirect '/playlist'
        end
    redirect '/signup'
    end




end
