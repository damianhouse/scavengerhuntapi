FactoryGirl.define do
  factory :question do
    pointValue 1
    questionText "MyString"
    isSponser false
    isImg false
    isShortAns false
    isItem false
    isVariable false
    isBonus false

    game
  end
end
