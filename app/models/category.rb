class Category < ActiveRecord::Base
  extend FriendlyId
  friendly_id :title, :use => :slugged
  has_many :tags
  has_many :projects, :through => :tags
  
  validates :title, :presence => true
  
  default_scope order(:title)
end
