class Session < ApplicationRecord
  has_many :climbs
  belongs_to :profile

  validates :location, :type, :presence => true
end
