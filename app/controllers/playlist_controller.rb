require './config/environment'
# a controller just for playlist actions 
class PlaylistController < ApplicationController

    configure do
        set :public_folder, 'public'
        set :views, 'app/views'
      end

    

      get '/playlists/:user_id' do
        "LISTS ALL user PLAYLISTS"

        erb :playlists
      end

      get '/playlist/:user_id/new' do
        "CREATES A NEW PLAYLIST"
        erb :new_playlist
  
      end

      get '/playlist/:user_id/find' do
        "FINDS A PLAYLIST BY A SPECIFIC ID"
        Playlist.find_by(:id)
      end

      post '/playlist' do
        "DISPLAYS A PLAYLIST AFTER CREATING IT"

      end

      get '/playlist/:user_id/edit' do
        "DISPLAYS THE EDIT FORM FOR A SPECIFIC PLAYLIST"
      end

      patch '/playlist/:user_id/update' do
        "CHANGES THE TITLE, DESCRIPTION OR CONTENTS OF A PLAYLIST" 
      end

      delete '/playlist/:user_id/delete/:playlist_id' do
        "DELETES A SPECIFIC PLAYLIST"
        
      end



      
end
