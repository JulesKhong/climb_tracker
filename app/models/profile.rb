class Profile < ApplicationRecord
  has_many :friendships
  has_many :friends, through: :friendships, class_name: "Profile"
  has_many :sets
  belongs_to :user

  after_create :set_total

  def set_total
    self.total = 0
    self.save
  end

end
