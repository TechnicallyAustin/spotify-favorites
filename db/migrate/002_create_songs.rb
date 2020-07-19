class CreateSongs < ActiveRecord::Migration
    def change
        create_table :songs do |t|
            t.string :title
            t.string :artist
        end
    end

end