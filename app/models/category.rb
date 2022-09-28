class Category < ApplicationRecord
    belongs_to :menu
    has_many :food_items, dependent: :destroy
    has_many :offers, as: :offerable
end
