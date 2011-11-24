class Category < ActiveRecord::Base
  has_many :tags
  has_many :projects, :through => :tags
  
  validates :title, :presence => true
end
