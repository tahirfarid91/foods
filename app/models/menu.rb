class Menu < ApplicationRecord
    belongs_to :resturant
    has_many :categories, dependent: :destroy
    has_many :offers, as: :offerable
end
