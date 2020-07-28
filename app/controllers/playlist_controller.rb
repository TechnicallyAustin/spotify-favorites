require './config/environment'
# a controller just for playlist actions 
class PlaylistController < ApplicationController

    configure do
        set :public_folder, 'public'
        set :views, 'app/views'
      end

  def playlist_selector
    current_user.playlist.find_by_id(params[:id])
  end

  get '/playlist' do
    redirect_if_logged_out 
    @playlist = current_user.playlist
    erb :'/playlist/index'
  end

  get '/playlist/new' do
    redirect_if_logged_out
    erb :'/playlist/new'
  end


  get '/playlist/:id' do
    redirect_if_logged_out
    @playlist = playlist_selector
    if @playlist.save
    erb :'/playlist/show'
    else
    redirect '/playlist'
    end
  end

  post '/playlist' do 
    redirect_if_logged_out
    @playlist = Playlist.build(:title => params[:title], :description => params[:description], :user_id => current_user.id)
    @song = Song.build(:title => params[:name], :artist => params[:artist], :playlist_id => @playlist.id, :user_id => current_user.id)
    binding.pry 
    redirect to "/playlist/#{@playlist.id}" 
  end
  
end

get '/playlist/:id/edit' do 
  binding.pry
  redirect_if_logged_out
  @playlist = playlist_selector
  erb :'/playlist/edit'

end

patch '/playlist/:id' do
  redirect_if_logged_out
  @playlist = playlist_selector
  @playlist.title = params[:title]
  @playlist.description = params[:description]
  @playlist.save
  redirect "/playlist/#{@playlist.id}"
end

delete '/playlist/:id' do 
  redirect_if_logged_out
  @playlist = playlist_selector
  if playlist
    @playlist.delete
  end
  redirect to "/playlist"

end
