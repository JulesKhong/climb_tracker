class ClimbingEntry < ApplicationRecord
  belongs_to :profile
  has_many :climbs

end
