require 'rails_helper'

RSpec.describe Profile, type: :model do
  it { should have_many :friends }
  it { should have_many :sessions }
  it { should validate_presence_of :username }
  it { should validate_length_of(:username).is_at_least(5) }
  it { should validate_length_of(:username).is_at_most(10) }

end
