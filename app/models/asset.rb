class Asset < ActiveRecord::Base
  belongs_to :project
  has_attached_file :image,
        :styles => {
        :thumb=> "100x100#",
        :small  => "300x300>",
        }
end
