require './config/environment'
class SessionController < Sinatra::Base
    #controller for user sessions 
    configure do
        set :public_folder, 'public'
        set :views, 'app/views'
    end

    get '/login' do 
        "THIS WILL BE THE ROUTE THAT ALLOWS A USER TO LOGIN"
    end

    post '/login' do
        "THIS IS THE ERB THAT THE LOGIN PAGE POSTS, SETS THE SESSION USER_ID TO THE CURRENT USER"
    end

    get '/logout' do
        "CLEARS THE SESSION TO LOG THE USER OUT"
    end

    
    
end

