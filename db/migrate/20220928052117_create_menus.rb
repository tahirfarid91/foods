class CreateMenus < ActiveRecord::Migration[7.0]
  def change
    create_table :menus do |t|
      t.string :title
      t.string :type
      t.text :discription
      t.string :status
      t.timestamps
    end
  end
end
