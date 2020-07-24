require './config/environment'
# a controller just for playlist actions 
class PlaylistController < ApplicationController

    configure do
        set :public_folder, 'public'
        set :views, 'app/views'
      end

  get '/playlist' do
    erb :'/playlist/index'

  end

  get '/playlist/new' do
    erb :'/playlist/new'
  end

  post '/playlist' do 
    @playlist = Playlist.new(:title => params[:title], :description => params[:description], :user_id => current_user.id)
    @playlist.save
    @song = Song.new(title: params[:song_name], artist: params[:artist], :playlist_id => @playlist.id)
    @song.save
    redirect to "/playlist/#{@playlist.id}" # The show page
  end


  get '/playlist/:id' do
  @playlist = Playlist.find_by_id(params[:id])
  erb :'/playlist/show'

  
end

get '/playlist/:id/edit' do 
  # This is an EDIT action
  # this displays the edit form based on the ID in the url
  @playlist = Playlist.find_by_id(params[:id])
  redirect "/playlist/#{@playlist.id}/edit"

  erb :'playlist/edit'
end

patch '/playlist/:id' do
  # this is an UPDATE action
  # this modifies an existing playlist based on the ID in the url
  @playlist = Playlist.find_by_id(params[:id])
  @playlist.title = params[:title]
  @playlist.description = params[e:description]
  @playlist.save
  redirect to "/playlist/#{@playlist.id}"
end

put '/playlist/:id' do
  # this is an UPDATE action
  # replaces an existing playlist based on the ID in the url
end

delete '/articles/:id' do 
  # This is a DELETE action
  # deletes on playlist based on the ID in the url
  @playlist = Playlist.find_by_id(params[:id])
  @playlist.delete
  redirect to "/playlist/#{current_user.playlist.id}"
end





      
end
