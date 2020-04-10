class TrainersController < ApplicationController
  def index
    @trainer = Trainer.find(current_trainer.id)
  end
end
