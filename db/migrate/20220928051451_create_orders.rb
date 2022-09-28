class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.string :status
      t.timestamp :placed_at
      t.timestamp :received_at
      t.decimal :total
      t.date :date
      t.timestamps
      t.integer :customer_id, foreign_key: true
    end
  end
end
