class Project < ActiveRecord::Base
  has_many :tags
  has_many :categories, :through => :tags
  has_many :rolerships
  has_many :roles, :through => :rolerships
  
  validates :title, :presence => true
  validates :resume, :presence => true
  
end
