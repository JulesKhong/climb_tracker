class Climb < ApplicationRecord
  belongs_to :climbing_entry

  validates :height, :rating, :presence => true

  after_save :update_total
  after_save :update_climb_total

  def update_total
    profile = self.climbing_entry.profile
    profile.total += self.height
    profile.save
  end

  def update_climb_total
    profile = self.climbing_entry.profile
    profile.total_climbs += 1
    profile.save
  end

end
