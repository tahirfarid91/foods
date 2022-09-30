class AddResturantReferenceToEmployee < ActiveRecord::Migration[7.0]
  def change
    add_reference :employees, :resturant, null: false, foreign_key: true
  end
end
