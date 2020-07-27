require './config/environment'
# a controller just for playlist actions 
class PlaylistController < ApplicationController

    configure do
        set :public_folder, 'public'
        set :views, 'app/views'
      end

  get '/playlist' do
    @playlist = current_user.playlist
    erb :'/playlist/index'

  end

  get '/playlist/new' do
    erb :'/playlist/new'
  end

  post '/playlist' do 
    @playlist = Playlist.create(:title => params[:title], :description => params[:description], :user_id => current_user.id)
    @playlist.save
    @song = Song.create(:title => params[:name], :artist => params[:artist], :playlist_id => @playlist.id, :user_id => current_user.id)
    @song.save
    binding.pry 
    #@playlist.song_id = @song.id
    #current_user.playlist_id = @playlist.id
    #@song_finder = Song.find_by(:playlist.id => params[:playlist_id])
    redirect to "/playlist/#{@playlist.id}" # The show page
  end


  get '/playlist/:id' do
  @playlist = Playlist.find_by_id(params[:id])
  erb :'/playlist/show'

  
end

get '/playlist/:id/edit' do 
  @playlist = Playlist.find_by_id(params[:id])
  redirect "/playlist/#{@playlist.id}/edit"

  erb :'playlist/edit'
end

patch '/playlist/:id' do
  @playlist = Playlist.find_by_id(params[:id])
  @playlist.title = params[:title]
  @playlist.description = params[:description]
  @playlist.save
  redirect to "/playlist/#{@playlist.id}"
end


delete '/articles/:id' do 
  @playlist = Playlist.find_by_id(params[:id])
  @playlist.delete
  redirect to "/playlist/#{current_user.playlist.id}"
end





      
end
