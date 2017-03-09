class Author < ApplicationRecord
  validates :name, presence: true

  has_many :posts
  has_many :comments
end
