require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get "/" do
    erb :welcome
  end

  get '/user' do
    erb :user_home
  end


  get '/signup' do
    erb :signup
  end


  get "/all_songs" do 
  erb :all_songs
end

  get '/:user/playlist'
  erb :user_playlist
  end

end
