require './config/environment'
# controller for the user class routes
class UserController < ApplicationController

    configure do
        set :public_folder, 'public'
        set :views, 'app/views'
    end

    get '/signup' do
        erb :'user/new'
      end
    
    post '/signup' do
        # add logic to stop duplicate users from being made
        user = User.new(params)
        if user.save
            session[:user_id] = user.id
            redirect 'user/home'
        end
        redirect '/singup'
    end



    post '/home' do 
        erb :'user/home'
    end



end

