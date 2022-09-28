class CreateMenus < ActiveRecord::Migration[7.0]
  def change
    create_table :menus do |t|
      t.string :title
      t.string :type
      t.text :discription
      t.string :status
      t.timestamps
      t.integer :resturant_id, foreign_key: true
    end
  end
end
