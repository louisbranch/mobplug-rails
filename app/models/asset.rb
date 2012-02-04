class Asset < ActiveRecord::Base
  belongs_to :project
  has_attached_file :image, :styles => { :thumb=> "160x120#", :small  => "260x180#" },
    :storage => Rails.env.production? ? :s3 : :filesystem,
    :bucket => 'luizbranco_imgs',
    :s3_credentials => {
      :access_key_id => ENV['S3_KEY'],
      :secret_access_key => ENV['S3_SECRET']
  }
end
