class Resturant < ApplicationRecord
    has_many :employees, dependent: :destroy
    has_one :menu
end
