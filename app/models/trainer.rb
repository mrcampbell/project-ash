class Trainer < ApplicationRecord
  has_many :pokemons, dependent: :destroy
  has_many :pokemon_moves, :through => :pokemon
end
