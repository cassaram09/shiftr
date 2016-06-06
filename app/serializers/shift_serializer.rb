class ShiftSerializer < ActiveModel::Serializer
  attributes :id, :day, :time, :role
  has_many :users
end
