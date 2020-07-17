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

    end

    get '/logout' do
        session.clear 
        # needs to validate that login has occured 
    end

    
    
end

