class ItemsController < ApplicationController
  def bag
    @items = Item.where(:trainer_id => current_trainer.id, :used_at => nil).group(:item_type_id).count
  end
end
