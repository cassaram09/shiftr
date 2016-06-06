class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :phone, :role
  has_many :shifts
end
