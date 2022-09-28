class Order < ApplicationRecord
    has_one :rating
    has_one :payment
    belongs_to :customer
    has_many :food_items, dependent: :destroy
end
