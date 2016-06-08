class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :phone, :role, :shift_ids
  has_many :comments
  has_one :request
end
