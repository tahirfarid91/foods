class CreateOffers < ActiveRecord::Migration[7.0]
  def change
    create_table :offers do |t|
      t.date :date_from
      t.date :date_to
      t.timestamp :time_from
      t.timestamp :time_to
      t.decimal :offer_price
      t.timestamps
      t.string :offerable_type
      t.bigint :offerable_id
    end
  end
end
