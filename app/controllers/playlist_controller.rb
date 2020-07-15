require './config/environment'
# a controller just for playlist actions 
class PlaylistController < Sinatra::Base 

    configure do
        set :public_folder, 'public'
        set :views, 'app/views'
      end

    

      get '/playlist' do
      end

      get '/playlist/new' do
      end

      get '/playlist/:id' do
      end

      post '/playlist' do
      end

      get '/playlist/:id/edit' do
      end

      patch '/playlist/:id' do
      end

      delete '/playlist/:id' do
      end
      


      
end
