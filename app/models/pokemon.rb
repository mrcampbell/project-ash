class Pokemon < ApplicationRecord
  belongs_to :trainer
  has_many :pokemon_moves, dependent: :destroy, before_add: :validate_move_limit

  private

  def validate_move_limit(moves)
    raise Exception.new if moves.size > 4
  end
end
