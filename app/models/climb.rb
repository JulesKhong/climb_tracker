class Climb < ApplicationRecord
  belongs_to :set

  validates :height, :rating, :presence => true
end
