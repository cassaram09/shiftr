class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :phone, :role
end
