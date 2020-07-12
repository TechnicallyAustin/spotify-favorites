class CreateSongs < ActiveRecord::Migration[5.2]
    def change
        #i can create a table of songs and insert my data to that table 
        #or
        # I can create a constant for my DB connection and iterate through the rows to create objects
        create_table :songs do |t|
            t.string :title
            t.string :artist
        end
    end

end