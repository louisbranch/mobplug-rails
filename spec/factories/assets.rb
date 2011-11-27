# Read about factories at http://github.com/thoughtbot/factory_girl
include ActionDispatch::TestProcess
FactoryGirl.define do
  factory :asset do
    image {File.join(::Rails.root.to_s, 'features', 'test_images', 'screenshot1.png')}
  end
end
