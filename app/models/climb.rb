class Climb < ApplicationRecord
  belongs_to :climbing_entries

  validates :height, :rating, :presence => true
end
