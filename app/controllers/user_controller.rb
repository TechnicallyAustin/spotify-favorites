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
        user = User.new(fname: params[:fname], lname: params[:lname], email: params[:email], password: params[:password])
        if user.save
            redirect '/login'
        else
            redirect '/failure'
        end
    end

    get '/registered' do
        erb :registered
        #redirect '/login'
    end



    get '/failure' do
        erb :'user/failure'
        #redirect '/signup'
    end




    post '/:user/home' do 
        redirect_if_logged_out 
        @user = User.find_by_id(params[:id])
        erb :'/user/home'
    end




end

