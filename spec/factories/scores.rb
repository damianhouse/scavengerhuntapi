FactoryGirl.define do
  factory :score, class: API::V1::Score do
    team_id 1
    answer_id 1
    score 100
  end
end
