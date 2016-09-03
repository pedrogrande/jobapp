class StudentProfile < ApplicationRecord
  belongs_to :user

  mount_uploader :cv, StudentProfileCvUploader
  mount_uploader :photo, CompanyProfileLogoUploader

  def student_name
    [first_name, last_name].join(' ')
  end

  def location
    [city, country].join(', ')
  end
end
