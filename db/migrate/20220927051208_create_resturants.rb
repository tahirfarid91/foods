class CreateResturants < ActiveRecord::Migration[7.0]
  def change
    create_table :resturants, :id => false do |t|
      t.integer :id
      t.string :name
      t.string :status

      t.timestamps
    end
  end
end
