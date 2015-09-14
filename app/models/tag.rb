class Tag < ActiveRecord::Base
  has_many :post_tags, inverse_of: :posts
  has_many :posts, through: :post_tags

  validates_uniqueness_of :name
end
