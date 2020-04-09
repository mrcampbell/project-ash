class AddTrainerUser < ActiveRecord::Migration[6.0]
  def change
    reversible do |dir|
      dir.up   { add_reference :trainers, :user, foreign_key: true }
      dir.down { remove_reference :trainers, :user }
    end
  end
end
