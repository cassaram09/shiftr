class Post < ActiveRecord::Base
  has_many :comments
  has_many :users, through: :comments

  has_many :post_tags
  has_many :tags, through: :post_tags
end
