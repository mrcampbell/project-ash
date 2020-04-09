class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.integer :item_type_id
      t.datetime :used_at

      t.references :trainer, null: false, foreign_key: true
      t.timestamps
    end
  end
end
