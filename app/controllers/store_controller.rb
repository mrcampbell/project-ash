class StoreController < ApplicationController
  def index
  end
  
  def purchase
    puts params[:item_type_id]
    puts params[:price]
    redirect_to store_path
  end
end
