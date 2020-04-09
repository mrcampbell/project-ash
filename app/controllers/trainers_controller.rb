class TrainersController < ApplicationController
  def index
    puts current_user.inspect
    puts current_trainer.inspect
    @trainer = Trainer.includes(:pokemons).find(current_trainer.id)
  end
end
