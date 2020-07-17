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
        # This needs to save a user to the DB and create a ruby objcet, using AR CRUD methods
        "SIGN UP SUCCESSFUL, REDIRECT USER TO LOGIN PAGE"
        user = User.new(params)
        if user.save 
            session[:user_id] = user.id
            redirect '/playlist'
        end
    redirect '/signup'
    end

    post '/home' do 
        erb :'user/home'
    end


### Need to add dynamic routes to user controller so that each use can be directed to their own home page, based on their user id ###


end
