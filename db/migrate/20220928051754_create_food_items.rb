class CreateFoodItems < ActiveRecord::Migration[7.0]
  def change
    create_table :food_items do |t|
      t.string :name
      t.integer :price
      t.string :status
      t.timestamps
    end
  end
end
