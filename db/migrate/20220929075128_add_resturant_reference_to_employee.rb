class AddResturantReferenceToEmployee < ActiveRecord::Migration[7.0]
  def change
    add_reference :employees, :Resturant, null: false, foreign_key: true
  end
end
