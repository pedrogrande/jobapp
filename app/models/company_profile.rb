class CompanyProfile < ApplicationRecord
  belongs_to :user

  mount_uploader :logo, CompanyProfileLogoUploader

end
