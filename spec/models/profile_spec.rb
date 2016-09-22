require 'rails_helper'

RSpec.describe Profile, type: :model do
  it { should have_many :friends }
  it { should have_many :sessions }


end
