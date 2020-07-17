require './config/environment'
# a controller just for playlist actions 
class PlaylistController < ApplicationController

    configure do
        set :public_folder, 'public'
        set :views, 'app/views'
      end

    

      get '/playlist' do
        "LISTS ALL PLAYLISTS"
        Playlist.all
      end

      get '/playlist/new' do
        "CREATES A NEW PLAYLIST"
  
      end

      get '/playlist/:id' do
        "FINDS A PLAYLIST BY A SPECIFIC ID"
        Playlist.find_by(:id)
      end

      post '/playlist' do
        "DISPLAYS A PLAYLIST AFTER CREATING IT"

      end

      get '/playlist/:id/edit' do
        "DISPLAYS THE EDIT FORM FOR A SPECIFIC PLAYLIST"
      end

      patch '/playlist/:id' do
        "CHANGES THE TITLE, DESCRIPTION OR CONTENTS OF A PLAYLIST" 
      end

      delete '/playlist/:id' do
        "DELETES A SPECIFIC PLAYLIST"
        
      end



      
end
