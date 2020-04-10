# frozen_string_literal: true

class AddTrainerMoney < ActiveRecord::Migration[6.0]
  def change
    change_table :trainers do |t|
      t.integer :money, null: false, default: 3000
    end
  end
end
