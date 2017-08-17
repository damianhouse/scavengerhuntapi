FactoryGirl.define do
  factory :player, class: API::V1::Player do
    team
    user
  end
end
