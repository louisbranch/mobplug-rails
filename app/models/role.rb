class Role < ActiveRecord::Base
  has_many :rolerships
  has_many :projects, :through => :rolerships
  
  validates :title, :presence => true
  
end