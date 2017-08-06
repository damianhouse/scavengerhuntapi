FactoryGirl.define do
  factory :answer do
    question_id 1
    player_id 1
    image_url "MyString"
    lat "MyString"
    long "MyString"
    answerText "MyString"
    hasItem false
    verified false
  end
end
