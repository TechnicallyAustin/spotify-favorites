class Playlist < ActiveRecord::Base 
    belongs_to :user 
    has_many :songs
    validates :title, :description, presence: true 
end
