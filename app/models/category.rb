class Category < ApplicationRecord
    belongs_to :menu
    has_many :food_items, dependent: :destroy
    validates_uniqueness_of :title, scope: :menu_id
    has_many :offers, as: :offerable
    accepts_nested_attributes_for :food_items, reject_if: :all_blank, allow_destroy: true
end
