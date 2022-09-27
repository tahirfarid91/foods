class RenameOldTableToNewTable < ActiveRecord::Migration[7.0]
  def change
    rename_table :create_admins, :admins
  end
end
