class DropOrderFood < ActiveRecord::Migration[7.0]
  def change
    drop_table :order_foods
  end
end
