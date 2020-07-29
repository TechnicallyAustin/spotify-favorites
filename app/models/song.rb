class Song < ActiveRecord::Base
    belongs_to :user
    belongs_to :playlist
    validates :name, :artist, presence: true 
end
