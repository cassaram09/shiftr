class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :phone, :role, :gender, :rating
end
