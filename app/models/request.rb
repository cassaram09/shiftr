class Request < ActiveRecord::Base
  belongs_to :user
  has_many :shifts

  accepts_nested_attributes_for :shifts
end
