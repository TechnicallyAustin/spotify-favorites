class CreateUsers < ActiveRecord::Migration[5.2]
    def change
        create_table :users do |t|
            t.string :fname
            t.string :lnamae
            t.string :email
            t.string :password
        end
        

    end

end
