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
        "THIS IS THE ERB THAT THE LOGIN PAGE POSTS, SETS THE SESSION USER_ID TO THE CURRENT USER"

    end

    get '/logout' do
        "CLEARS THE SESSION TO LOG THE USER OUT"
        session.clear 
    end

    
    
end

