# frozen_string_literal: true

class StoreController < ApplicationController

  def index
    @items_for_sale = helpers.items_for_sale
    @current_money = current_trainer.money
    @items_in_bag = Item.where(:trainer_id => current_trainer.id, :used_at => nil, :sold_at => nil).group(:item_type_id).count
  end

  def purchase
    puts 'PURCHASE'
    
    # todo: error check
    item_order = helpers.items_for_sale[params[:purchase_id]]

    puts item_order
    purchased_item = Item.new(item_type_id: item_order[:type], trainer_id: current_trainer.id)
    if purchased_item.save 
      current_money = current_trainer.money
    end
    
    # todo: error check   
    current_trainer.update(money: current_money - item_order[:buy_price])
  
    # todo: this isn't right
    redirect_to store_path(current_trainer)
  end

  def sell
    puts 'SELL'
    
    # todo: error check
    item_order = helpers.items_for_sale[params[:purchase_id]] 

    sold_item_list = Item.where(:item_type_id => item_order[:type], :trainer_id => current_trainer.id, :used_at => nil, :sold_at => nil).limit(1)

    if sold_item_list.empty? 
      redirect_to store_path(current_trainer) and return
    end

    sold_item = sold_item_list.to_a[0]
    sold_item.sold_at = Time.now
    if sold_item.save 
      current_money = current_trainer.money
    end
    
    # todo: error check   
    current_trainer.update(money: current_money + item_order[:sell_price])
    # todo: this isn't right
    redirect_to store_path(current_trainer)
  end

end
