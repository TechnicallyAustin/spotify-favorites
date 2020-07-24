class Playlist < ActiveRecord::Base 
    belongs_to :user 
    has_many :song
    validates :title, :description, presence: true 
end
