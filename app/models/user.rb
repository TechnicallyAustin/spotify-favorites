class User < ActiveRecord::Base
    #validates_pressence_of :first_name, :last_name, :email, :password
    #has_many :songs

    # users will need to Log in, log out, signup create a playlist, add songs, remove songs, delete all, and search
    #can see all users
    #User can perform CRUD Methods but only on its own objects
    has_many :playlists
    #

    #validates :name,  :email, uniqueness: true 
    
    has_secure_password
end
