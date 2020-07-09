class Song < ActiveRecord::Base
    belongs_to :user
    def initialize(title, artist, genre, year)
        @title = title
        @artist = artist
        @genre = genre
        @year = year
    end
    
    #use AR methods and SQL to create objects from the Spotify databse
end
