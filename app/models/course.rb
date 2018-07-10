class Course < ApplicationRecord
  belongs_to :professional, optional:true
  has_many :lectures, dependent: :destroy
  mount_uploader :banner_image, ImageUploader
  paginates_per 6
end
