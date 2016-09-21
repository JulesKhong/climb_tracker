require 'rails_helper'

RSpec.describe Climb, type: :model do
  it { should belong_to :session}
  it { should validate_presence_of :height }
  it { should validate_presence_of :rating }

end
