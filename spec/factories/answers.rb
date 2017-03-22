FactoryGirl.define do
  factory :answer do
    response1 true
    response2 false
    response3 false
    user
    question
    # question_id 1
  end
end
