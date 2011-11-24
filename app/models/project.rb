class Project < ActiveRecord::Base
  has_many :tags
  has_many :categories, :through => :tags
  
  validates :title, :presence => true
  validates :description, :presence => true
  
end
