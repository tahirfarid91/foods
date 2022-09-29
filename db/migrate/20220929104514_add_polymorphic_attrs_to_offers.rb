class AddPolymorphicAttrsToOffers < ActiveRecord::Migration[7.0]
  def change
    add_column :offers, :offerable_type, :string
    add_column :offers, :offerable_id, :integer
  end
end
