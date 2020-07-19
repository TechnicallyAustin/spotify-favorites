class CreatePlaylists < ActiveRecord::Migration
    def change
    create_table :playlists do |t|
        t.string :title
        t.string :description
        t.string :user_id
    end
    end

end
