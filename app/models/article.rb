class Article < ApplicationRecord
  belongs_to :user,optional: true
  has_many :comments, dependent: :destroy
  mount_uploader :cover_image, ImageUploader
end
