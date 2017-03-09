class Post < ApplicationRecord
  belongs_to :author
  has_many :comments

  validates :title, :content, :author, presence: true

  scope :published, -> { where.not(published_at: nil) }
end
