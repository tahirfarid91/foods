class Offer < ApplicationRecord
    belongs_to :menu
    belongs_to :food_item
    belongs_to :category
    belongs_to :offerable, polymorphic: true
end
