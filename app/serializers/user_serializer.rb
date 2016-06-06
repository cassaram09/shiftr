class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :phone, :role
  has_many :comments
end
