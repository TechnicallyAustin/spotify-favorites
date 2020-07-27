class User < ActiveRecord::Base
    has_many :playlist
    has_many :song, through: :playlist
    validates :name, :email, uniqueness: true 
    has_secure_password
end
