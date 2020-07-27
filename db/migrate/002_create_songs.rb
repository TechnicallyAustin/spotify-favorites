class CreateSongs < ActiveRecord::Migration
    def change
        create_table :songs do |t|
            t.string :title
            t.string :artist
            t.belongs_to :playlist
            t.belongs_to :user
        end
    end

end