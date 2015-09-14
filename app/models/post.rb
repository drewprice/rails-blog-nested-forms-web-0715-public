class Post < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  has_many :post_tags
  has_many :tags, through: :post_tags

  validates_presence_of :name, :content

  def new_tag=(tag_params)
    if tag_params[:name]
      persisted = Tag.find_by(tag_params)
      tag = persisted ? persisted : tags.build(tag_params)
      return tag
    end

  end
end
