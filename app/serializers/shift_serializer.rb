class ShiftSerializer < ActiveModel::Serializer
  attributes :id, :day, :time
  has_many :users
end
