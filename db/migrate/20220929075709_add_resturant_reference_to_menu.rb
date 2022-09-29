class AddResturantReferenceToMenu < ActiveRecord::Migration[7.0]
  def change
    add_reference :menus, :resturant, null: false, foreign_key: true
  end
end
