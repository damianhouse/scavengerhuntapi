FactoryGirl.define do
  factory :question do
    game_id 1
    pointValue 1
    questionText "MyString"
    isSponser false
    isImg false
    isShortAns false
    isItem false
    isVariable false
    isBonus false
  end
end
