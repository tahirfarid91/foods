class FixColumnName < ActiveRecord::Migration[7.0]
  def change
    rename_column :employees, :password, :encrypted_password
  end
end
