class Profile < ApplicationRecord
  has_many :friendships
  has_many :friends, through: :friendships, class_name: "Profile"
  has_many :sessions

  validates :username, :presence => true
  validates :username, :length => { minimum: 5, maximum: 10 }
end
