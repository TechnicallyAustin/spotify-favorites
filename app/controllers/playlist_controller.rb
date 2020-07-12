require './config/environment'

class PlaylistController < Sinatra::Base 

    configure do
        set :public_folder, 'public'
        set :views, 'app/views'
      end
    
      def create_song
      end

      def change_song
      end

      def list_songs
      end
      

      def renove_song
      end



end
