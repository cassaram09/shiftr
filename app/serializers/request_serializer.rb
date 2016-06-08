class RequestSerializer < ActiveModel::Serializer
  attributes :id, :monday, :tuesday, :wednesday, :thursday, :friday, :saturday, :sunday, :updated_at
end
