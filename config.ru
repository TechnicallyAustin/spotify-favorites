require './config/environment'
require 'sinatra'
require_relative 'app/controllers/application_controller'
require_relative 'app/controllers/sessions_controller'
require_relative 'app/controllers/playlist_controller'
require_relative 'app/controllers/user_controller'


if ActiveRecord::Migrator.needs_migration?
  raise 'Migrations are pending. Run `rake db:migrate` to resolve the issue.'
end

use Rack::MethodOverride
use PlaylistController
use SessionController
use UserController
run ApplicationController

