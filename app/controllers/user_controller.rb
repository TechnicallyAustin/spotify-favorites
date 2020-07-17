require './config/environment'
# controller for the user class routes
class UserController < ApplicationController

    configure do
        set :public_folder, 'public'
        set :views, 'app/views'
    end

    get '/signup' do
        erb :'user/signup'
      end
    
    post '/signup' do
        user = User.create(:fname => params[:fname], :lname => params[:lname], :email => params[:email], :password => params[:password])
        user.save
        session[:user_id] = user.id
        redirect 'user/home'
    end

    post '/home' do 
        erb :'user/home'
    end



end

