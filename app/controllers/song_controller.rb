require './config/environment'
# a controller specifically for the song class
class SongController < Sinatra::Base 

    configure do
        set :public_folder, 'public'
        set :views, 'app/views'
    end
    

end
