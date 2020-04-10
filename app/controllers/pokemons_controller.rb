class PokemonsController < ApplicationController
  def box
    @pokemon = Pokemon.where(:trainer_id => current_trainer.id, :in_team? => false)   
  end

  def team
    @pokemon = Pokemon.where(:trainer_id => current_trainer.id, :in_team? => true)
  end
end
