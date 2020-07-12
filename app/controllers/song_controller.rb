require './config/environment'

class SongController < Sinatra::Base 

    configure do
        set :public_folder, 'public'
        set :views, 'app/views'
    end
    

end
