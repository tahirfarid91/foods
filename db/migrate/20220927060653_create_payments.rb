class CreatePayments < ActiveRecord::Migration[7.0]
  def change
    create_table :payments,:id => false do |t|
      t.integer :id
      t.date    :date
      t.timestamps
      t.integer :order_id, foreign_key: true
    end
  end
end
