class AddSellDateItem < ActiveRecord::Migration[6.0]
  def change
    change_table :items do |t|
      t.datetime :sold_at
    end
  end
end
