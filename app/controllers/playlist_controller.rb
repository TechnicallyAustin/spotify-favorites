require './config/environment'
# a controller just for playlist actions 
class PlaylistController < ApplicationController

    configure do
        set :public_folder, 'public'
        set :views, 'app/views'
      end

  get '/playlist' do
    # This is an INDEX action
    # index page to display all playlists
    @playlists = current_user.playlist
    erb :'/playlist/index'
  end

  get '/playlist/new' do
    erb :'/playlist/new'
    # this is a NEW action
    # displays create playlist form
  end

  post '/playlist' do 
    binding.pry
    # This is a CREATE action
    # this actualy creates the playlist using the form from the previous route
    @playlist = Playlist.new(:title => params[:title], :description => params[:description])
    @playlist.save
    @song = Song.create(title: params[:title], artist: params[:artist])
    @song.save
    redirect to '/playlist/#{@playlist.id}' # The show page
  end


  get '/playlist/:id' do
  # this is a SHOW action
  # displays one playlist based on ID in the url
  @playlist = find_by_id(params[:id])
  erb :'/playlist/show'
  
end

get '/playlist/:id/edit' do 
  # This is an EDIT action
  # this displays the edit form based on the ID in the url
  @playlist = Playlist.find_by_id(params[:id])
  erb :'playlist/edit'
end

patch '/playlist/:id' do
  # this is an UPDATE action
  # this modifies an existing playlist based on the ID in the url
  @playlist = Playlist.find_by_id(params[:id])
  @playlist.title = params[:title]
  @playlist.description = params[:description]
  @playlist.save
  redirect to '/playlist/#{@playlist.id}'
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
  redirect to '/playlist'
end





      
end
