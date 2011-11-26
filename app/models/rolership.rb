class Rolership < ActiveRecord::Base
  belongs_to :project
  belongs_to :role
    
end
