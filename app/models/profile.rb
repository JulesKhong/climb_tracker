class Profile < ApplicationRecord
  has_many :friends
  has_many :sessions

  validates :username, :presence => true
  validates :username, :length => { minimum: 5, maximum: 10 }
end
