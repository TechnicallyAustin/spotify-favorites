class Song < ActiveRecord::Base
    belongs_to :user
    belongs_to :playlist
    validates :title, :artist, presence: true 
end
