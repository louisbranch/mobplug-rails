class Category < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, :use => :slugged
  has_many :tags
  has_many :projects, :through => :tags

  validates :name, :presence => true

  default_scope order(:name)
end
