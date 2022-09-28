class FoodItem < ApplicationRecord
    has_many: offers, dependent: :destroy
    belongs_to :category
    belongs_to :order
    has_many :offers, as: :offerable
end
