class CreateOptions < ActiveRecord::Migration[7.0]
  def change
    create_table :options do |t|
      t.string :option
      t.timestamps
      t.integer :food_item_id, foreign_key: true
    end
  end
end
