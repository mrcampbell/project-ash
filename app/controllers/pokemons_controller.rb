class PokemonsController < ApplicationController
  def box
    @pokemons = Pokemon.all    
  end

  def team
  end
end
