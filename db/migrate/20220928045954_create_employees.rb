class CreateEmployees < ActiveRecord::Migration[7.0]
  def change
    create_table :employees do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.integer :cell
      t.string :gender
      t.integer :age
      t.date :date_of_joining
      t.string :address
      t.integer :cnic
      t.string :designation
      t.timestamps
    end
  end
end
