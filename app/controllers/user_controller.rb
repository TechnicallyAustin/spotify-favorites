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
        user = User.find_by(:email params[:email])
        if !user 
            new_user = User.new(params)
            new_user.save
            session[:user_id] = new_user.id
            redirect '/#{user_id}/home'
        elsif user.save
            "There is already a user with this email address created"
            redirect '/signup'
        end
        "There is already a user with this email address created"
        redirect '/signup'
    end



    post '/:user/home' do 
        redirect_if_logged_out 
        @user = User.find_by_id(params[:id])
        erb :'/user/home'
    end




end

