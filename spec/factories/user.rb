FactoryGirl.define do
  factory :user do
    email Faker::Internet.email
    username "foo"
  end
end
