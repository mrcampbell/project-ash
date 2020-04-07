class CreatePokemonMoves < ActiveRecord::Migration[6.0]
  def change
    create_table :pokemon_moves do |t|
      t.integer :move_id

      t.integer :index
      t.references :pokemon, null: false, foreign_key: true

      t.timestamps
    end
  end
end
