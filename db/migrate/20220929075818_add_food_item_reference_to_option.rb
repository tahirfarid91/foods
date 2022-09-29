class AddFoodItemReferenceToOption < ActiveRecord::Migration[7.0]
  def change
    add_reference :options, :food_item, null: false, foreign_key: true
  end
end
