class CreateCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :categories do |t|
      t.string :title
      t.string :status
      t.timestamps
      t.integer :menu_id, foreign_key: true
    end
  end
end
