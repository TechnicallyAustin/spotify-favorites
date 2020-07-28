require './config/environment'
require 'pry'
# controller for the user class routes
class UserController < ApplicationController

    configure do
        set :public_folder, 'public'
        set :views, 'app/views'
    end

    get '/signup' do
        erb :'user/new'
      end
    
    post '/signup' do
        user = params[:name]
        user = User.new(params)
        if user.save
            redirect '/registered'
        else
            redirect '/failure'
        end
    end

    get '/registered' do
        erb :'/user/registered'
    end



    get '/failure' do
        erb :'user/failure'
        # put a sign up link in this erb
    end


end

