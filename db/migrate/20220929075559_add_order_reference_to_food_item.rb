class AddOrderReferenceToFoodItem < ActiveRecord::Migration[7.0]
  def change
    add_reference :food_items, :order, null: false, foreign_key: true
  end
end
