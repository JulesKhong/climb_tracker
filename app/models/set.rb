class Set < ApplicationRecord
  has_many :climbs
  belongs_to :profile

end
