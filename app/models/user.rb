class User < ActiveRecord::Base
    has_many :playlists
    has_many :songs, through: :playlists
    validates :name, :email, uniqueness: true 
    validates_format_of :email,:with => /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/
    has_secure_password
end
