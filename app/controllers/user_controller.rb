require './config/environment'
# controller for the user class routes
class UserController < Sinatra::Base

    configure do
        set :public_folder, 'public'
        set :views, 'app/views'
    end

    post '/signup' do
        "USING THE INFO FROM THE SIGNUP FORM IT WILL CREATE A NEW USER OBJECT AND SAVE IT TO THE DB, 
        THIS CREATES A USER OBJECT USING THE PARAMS HASH AND AR, RETURNS THE USER "
      end


end
