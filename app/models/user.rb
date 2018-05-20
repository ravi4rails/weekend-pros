class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  mount_uploader :profile_pic, ImageUploader

  geocoded_by :address
  after_validation :geocode

  acts_as_taggable_on :skills

  def name
    "#{self.first_name} #{self.last_name}"
  end

end
