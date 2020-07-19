class Playlist < ActiveRecord::Base 
    belongs_to :user 
    has_many :songs
    validates :name, :description, presence: true 
end
