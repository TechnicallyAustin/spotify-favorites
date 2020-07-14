require './config/environment'
# a controller just for playlist actions 
class PlaylistController < Sinatra::Base 

    configure do
        set :public_folder, 'public'
        set :views, 'app/views'
      end
end
