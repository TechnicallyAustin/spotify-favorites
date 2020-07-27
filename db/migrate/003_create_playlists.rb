class CreatePlaylists < ActiveRecord::Migration
    def change
    create_table :playlists do |t|
        t.string :title
        t.string :description
        t.belongs_to :user
    end
    end

end
