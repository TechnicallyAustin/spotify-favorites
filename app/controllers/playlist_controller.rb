require './config/environment'
# a controller just for playlist actions 
class PlaylistController < ApplicationController

    configure do
        set :public_folder, 'public'
        set :views, 'app/views'
      end

  def playlist_selector
    current_user.playlists.find_by_id(params[:id])
  end

  get '/playlists' do
    redirect_if_logged_out 
    @playlist = current_user.playlists
    erb :'/playlist/index'
  end

  get '/playlists/new' do
    redirect_if_logged_out
    erb :'/playlist/new'
  end


  get '/playlists/:id' do
    redirect_if_logged_out
    #binding.pry
    @playlist = playlist_selector
    if @playlist.save
    erb :'/playlist/show'
    else
    redirect '/playlists'
    end
  end

  post '/playlists' do 
    redirect_if_logged_out
    @playlist = current_user.playlists.create(params[:playlist][:info])
    @song = @playlist.songs.create(params[:playlist][:song])
    @song.user_id = current_user.id
    erb :'/playlist/show'
  end
  


  get '/playlists/:id/edit' do 
  redirect_if_logged_out
  @playlist = playlist_selector
  erb :'/playlist/edit'
  end

  patch '/playlists/:id' do
    redirect_if_logged_out
      @playlist = playlist_selector
      if @playlist
          if @playlist.update(title: params[:playlist][:info][:title], description: params[:playlist][:info][:description]) || @playlist.songs.first.update(name: params[:playlist][:song][:name], artist: params[:playlist[:song][:artist]])
            binding.pry
            redirect "/playlists/#{@playlist.id}"
          end
          redirect "/playlists/#{@playlist.id}/edit"
      end
    redirect '/playlists'
  end


  delete '/playlists/:id' do 
  redirect_if_logged_out
  @playlist = playlist_selector
    if @playlist
    @playlist.delete
    redirect to "/playlists"
    else
    redirect to "/playlists"
    end
  end


end


