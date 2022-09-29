class CreateRatings < ActiveRecord::Migration[7.0]
  def change
    create_table :ratings do |t|
      t.decimal :rating
      t.text :remarks
      t.date :date
      t.timestamps
    end
  end
end
