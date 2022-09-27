class CreatePayments < ActiveRecord::Migration[7.0]
  def change
    create_table :payments,:id => false do |t|
      t.integer :id
      t.date    :date

      t.timestamps
    end
  end
end
