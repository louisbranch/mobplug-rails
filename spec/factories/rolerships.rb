FactoryGirl.define do
  factory :rolership do
    association :project
    association :role
  end
end
