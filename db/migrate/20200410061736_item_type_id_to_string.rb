class ItemTypeIdToString < ActiveRecord::Migration[6.0]
  def change
    change_column :items, :item_type_id, :string
  end
end
