include ActionDispatch::TestProcess
FactoryGirl.define do
  factory :asset do
    image {File.join(::Rails.root.to_s, 'features', 'test_images', 'screenshot1.png')}
  end
end
