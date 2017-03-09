class Comment < ApplicationRecord
  belongs_to :author
  belongs_to :post

  validates :author, :post, :content, presence: true
end
