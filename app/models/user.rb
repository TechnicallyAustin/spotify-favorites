class User < ActiveRecord::Base
    #validates_pressence_of :first_name, :last_name, :email, :password
    #has_many :songs

    # users will need to Log in, log out, signup create a playlist, add songs, remove songs, delete all, and search
    #can see all users
    #User can perform CRUD Methods but only on its own objects
    def initalize(fname, lname, email, password)
        @fname = fname
        @lname = lname
        @email = email
        @password = password
    end

    def login
        session[:id]
    end

    def logout
        session.clear
    end

    def add_song
    end

    def list_songs
    end

    def remove_songs
    end

    def new_playlist
    end

    def show_playlist
    end


    

end