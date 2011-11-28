class Project < ActiveRecord::Base
  extend FriendlyId
  friendly_id :title, :use => :slugged
  has_many :tags, :dependent => :destroy
  has_many :categories, :through => :tags
  has_many :rolerships, :dependent => :destroy
  has_many :roles, :through => :rolerships
  has_many :assets, :dependent => :destroy
  accepts_nested_attributes_for :assets, :allow_destroy => true
  
  validates :title, :presence => true
  validates :resume, :presence => true
  validates_associated :assets
  
  default_scope order('created_at DESC')
  
end
