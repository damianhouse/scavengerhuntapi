FactoryGirl.define do
  factory :user do
    sequence(:email) { |n| "mail#{n}@mail.com" }
    password '123123123'
    name  'F_USER'
  end
end