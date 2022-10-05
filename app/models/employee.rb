class Employee < ApplicationRecord
  belongs_to :resturant

  devise :database_authenticatable,
        :recoverable, :rememberable, 
        :invitable, :validatable, :confirmable

end
