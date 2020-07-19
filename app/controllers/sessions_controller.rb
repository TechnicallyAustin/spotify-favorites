require './config/environment'
class SessionController < ApplicationController
    #controller for user sessions 
    configure do
        set :public_folder, 'public'
        set :views, 'app/views'
    end

    get '/login' do 
        erb :"sessions/login"
    end

    post '/login' do
        # needs to validate login information
        user_exists = User.find_by(:email params[:email], :password params[:password])
        if user_exists
            session[:user_id] = user_exists.id
            #redirect to the users home page, THe home page might be the playlist home page dynamicaly routed to a user
        else 
            redirect '/signup' 
        end

    end

    get '/logout' do
        session.clear 
        # needs to validate that login has occured 
    end

    
    
end

