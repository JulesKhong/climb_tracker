require 'rails_helper'

RSpec.describe Session, type: :model do
  it { should belong_to :profile }
  it { should have_many :climbs }
  it { should validate_presence_of :location }
  it { should validate_presence_of :type }

end
