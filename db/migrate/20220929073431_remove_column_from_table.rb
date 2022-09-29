class RemoveColumnFromTable < ActiveRecord::Migration[7.0]
  def change
    remove_column :employees, :resturant_id, :integer
    remove_column :payments, :order_id, :integer
    remove_column :ratings, :order_id, :integer
  end
end
