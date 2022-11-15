class Category < ApplicationRecord
    belongs_to :menu
    has_many :food_items, dependent: :destroy
    validates_uniqueness_of :title, scope: :menu_id
    has_many :offers, as: :offerable
end
