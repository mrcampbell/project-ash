class TrainersController < ApplicationController
  def index
    @trainer = Trainer.find(current_trainer.id)

    # @trainer = Trainer.includes(:pokemons).includes({:pokemons => :pokemon_moves}).find(current_trainer.id)
  end
end
