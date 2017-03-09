class CommentSerializer < ActiveModel::Serializer
  attributes :id, :content, :author

  belongs_to :author
  belongs_to :post
end
