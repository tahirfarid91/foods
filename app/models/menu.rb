class Menu < ApplicationRecord
    belongs_to :resturant
    has_many :categories, dependent: :destroy
    validates_uniqueness_of :title, scope: :resturant_id
    has_many :offers, as: :offerable
end
