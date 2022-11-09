class FoodItem < ApplicationRecord
    has_many :offers, dependent: :destroy
    belongs_to :category
    has_many :offers, as: :offerable
end
