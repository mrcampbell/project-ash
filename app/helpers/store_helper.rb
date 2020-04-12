module StoreHelper
  def items_for_sale
    {
      "purchase_potion" => { type: :potion, buy_price: 300, sell_price: 200 },
      "purchase_antidote" => { type: :antidote, buy_price: 250, sell_price: 175 },
      "purchase_pokeball" => { type: :pokeball, buy_price: 100, sell_price: 75 } 
   }
  end
end
