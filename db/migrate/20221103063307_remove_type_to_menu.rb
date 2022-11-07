class RemoveTypeToMenu < ActiveRecord::Migration[7.0]
  def change
    remove_column :menus, :type, :string
  end
end
