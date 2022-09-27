class CreateCustomers < ActiveRecord::Migration[7.0]
  def change
    create_table :customers, :id => false do |t|
      t.integer :id
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :gender
      t.date :date_of_birth
      t.string :username
      t.string :password

      t.timestamps
    end
  end
end
