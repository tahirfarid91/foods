class Employee < ApplicationRecord
  belongs_to :resturant, optional: true

  devise :database_authenticatable,
        :recoverable, :rememberable, 
        :invitable, :validatable, :registerable
end
