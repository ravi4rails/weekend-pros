class UserSerializer < ActiveModel::Serializer
  attributes :first_name, :last_name, :email, :contact, :username, :address, :about, :profile_pic, :latitude, :longitude
end
