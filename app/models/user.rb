class User < ActiveRecord::Base
    has_many :playlists
    validates :name, :email, uniqueness: true 
    has_secure_password
end
