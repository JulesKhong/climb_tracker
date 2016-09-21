class Climb < ApplicationRecord
  belongs_to :session

  validates :height, :rating, :presence => true
end
