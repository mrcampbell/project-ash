class TrainersController < ApplicationController
  def index
    trainers = Trainer.all
    render json: trainers, include: {pokemons: {include: :pokemon_moves}}
  end
end
