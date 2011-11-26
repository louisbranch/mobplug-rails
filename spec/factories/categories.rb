FactoryGirl.define do
  factory :category do
    title "Web App"
  end
  
  factory :category_with_project, :parent => :category do
    after_create { |c| Factory(:project, :categories => c) }
  end
end
