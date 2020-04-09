class AddTrainerUser < ActiveRecord::Migration[6.0]
  def change
    reversible do |dir|
      dir.up   { 
        add_reference :trainers, :users, foreign_key: true 
      }
      dir.down { 
        remove_reference :trainers, :users
       }
    end
  end
end
