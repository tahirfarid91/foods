class Offer < ApplicationRecord
   belongs_to :offerable, ploymorphic: true
end
