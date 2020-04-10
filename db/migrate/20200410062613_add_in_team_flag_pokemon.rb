class AddInTeamFlagPokemon < ActiveRecord::Migration[6.0]
  def change
    change_table :pokemons do |t|
      t.boolean :in_team?, null: false, default: false
    end
  end
end
