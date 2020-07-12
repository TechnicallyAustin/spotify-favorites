class Song < ActiveRecord::Base
    belongs_to :playlist
    #use AR methods and SQL to create objects from the Spotify databse
    #the songs in playlist will be input by the user as a form and then saved as a playlist that cxan be posetd via an ERB
end
