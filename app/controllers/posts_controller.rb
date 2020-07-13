require './config/environment'
# A controller specifically for Post routes of all controller classes 
class PostController < Sinatra::Base

    configure do
        set :public_folder, 'public'
        set :views, 'app/views'
      end
end
