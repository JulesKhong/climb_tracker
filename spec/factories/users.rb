FactoryGirl.define do
  factory :user do
    sequence(:email) { |n| "user_#{n}@factory.com" }
    password 'password'
  end
end

FactoryGirl.define do
  factory(:profile, :aliases => [:friend]) do
    user
    username 'TestUser'
    avatar 'test.jpg'
    level 'blue'
    total 1
  end
end

FactoryGirl.define do
  factory(:session) do
    profile
    notes 'Test note'
    date '01/01/16'
    time '10:00'
    type 'bouldering'
    location 'indoor'
  end
end

FactoryGirl.define do
  factory(:climb) do
    session
    height 1
    rating 'V1'
  end
end

FactoryGirl.define do
  factory(:friendship) do
    profile
    friend
  end
end
