require './config/environment'
class SessionController < Sinatra::Base
    #controller for user sessions 
    configure do
        set :public_folder, 'public'
        set :views, 'app/views'
    end

    get '/login' do 
    end

    post '/login' do
    end

    get '/logout' do
    end
    
    
    
end

