FactoryGirl.define do
  factory :team, class: API::V1::Team do
    score 1234
    name "MyString"

    game
  end
end
