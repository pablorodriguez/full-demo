FactoryGirl.define do
  factory :user do
    name     { FFaker::NameBR.name }
    email    { FFaker::Internet.safe_email }
    password 'test1234'
  end
end