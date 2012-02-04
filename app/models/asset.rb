class Asset < ActiveRecord::Base
  belongs_to :project
  has_attached_file :image, :styles => { :thumb=> "160x120#", :small  => "260x180#" }
end
