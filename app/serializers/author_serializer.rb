class AuthorSerializer < ActiveModel::Serializer
  attributes :id, :name, :active

  has_many :posts
  has_many :comments
end
