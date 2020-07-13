require './config/environment'
# controller for the user class routes
class UserController < Sinatra::Base

    configure do
        set :public_folder, 'public'
        set :views, 'app/views'
    end

    get '/:user/home' do
    end

    get '/:user/:playlist' do
    end

    get '/'

end
