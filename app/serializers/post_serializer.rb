class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :content

  belongs_to :author
  has_many :comments
end
