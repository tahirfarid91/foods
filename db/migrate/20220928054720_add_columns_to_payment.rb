class AddColumnsToPayment < ActiveRecord::Migration[7.0]
  def change
    add_column :payments, :method, :string
    add_column :payments, :amount, :integer
    add_column :payments, :paid_by, :string
  end
end
