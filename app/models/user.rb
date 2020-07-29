class User < ActiveRecord::Base
    has_many :playlists
    has_many :songs, through: :playlists
    validates :name, :email, uniqueness: true 
    has_secure_password
end
