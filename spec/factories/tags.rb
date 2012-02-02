FactoryGirl.define do
  factory :tag do
    associtation :project
    associtation :category
  end
end
