class RemoveColumnFromTable < ActiveRecord::Migration[7.0]
  def change
    remove_column :customers,  :id, :integer
    remove_column :admins,     :id, :integer
    remove_column :payments,   :id, :integer
    remove_column :resturants, :id, :integer
  end
end
