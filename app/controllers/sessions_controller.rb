require './config/environment'
class SessionController < ApplicationController
    configure do
        set :public_folder, 'public'
        set :views, 'app/views'
    end

    get '/login' do 
        erb :"sessions/login"
    end

    get '/login-failure' do
        erb :'user/login-failure'
    end

    post '/login' do
        user_exists = User.find_by(email: params[:email])
        if user_exists && user_exists.authenticate(params[:password])
            session[:user_id] = user_exists.id
            redirect '/playlists'
        else 
            redirect '/login-failure' 
        end
    end

    get '/logout' do
        session.clear 
        erb :'/sessions/logout'
    end

    
    
end

