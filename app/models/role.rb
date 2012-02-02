class Role < ActiveRecord::Base
  has_many :rolerships
  has_many :projects, :through => :rolerships

  validates :name, :presence => true

  default_scope order(:name)
end
