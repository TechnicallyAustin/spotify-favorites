require './config/environment'
# controller for the user class routes
class UserController < Sinatra::Base

    configure do
        set :public_folder, 'public'
        set :views, 'app/views'
    end

    post '/signup' do
        "Create an ERB -- Registration successful, Display this ERB as the post to the signup from"
        erb :registered
      end


end
