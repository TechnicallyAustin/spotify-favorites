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
        user_exists = User.find_by(email: params[:email])
       # binding.pry
        if user_exists && user_exists.authenticate(params[:password])
            session[:user_id] = user_exists.id
            redirect '/playlist'
        else 
            redirect '/failure' 
        end

    end

    get '/logout' do
        session.clear 
    end

    
    
end

