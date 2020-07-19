class User < ActiveRecord::Base
    has_many :playlists
    validates_pressence_of :fname, :lname, :email, :password
    validates :name,  :email, uniqueness: true 
    #has_secure_password
end
