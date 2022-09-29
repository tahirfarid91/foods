class AddOrderReferenceToRating < ActiveRecord::Migration[7.0]
  def change
    add_reference :ratings, :order, null: false, foreign_key: true
  end
end
