class Climb < ApplicationRecord
  belongs_to :climbing_entry

  validates :height, :rating, :presence => true
end
