class AddPokemonDeets < ActiveRecord::Migration[6.0]
  def change
    change_table :pokemons do |t|
      t.integer :level
      t.integer :experience

      t.integer :iv_attack
      t.integer :iv_defense
      t.integer :iv_special_attack
      t.integer :iv_special_defense
      t.integer :iv_speed
      t.integer :ev_attack
      t.integer :ev_defense
      t.integer :ev_special_attack
      t.integer :ev_special_defense
      t.integer :ev_speed
      
      t.string  :status
    end
  end
end
