class Post < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :comments
  has_many :likes
  validates :title, presence: true, length: { maximum: 250 }
  validates :likes_count, presence: false, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :comments_count, presence: false, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  def mostrecentcomments(limit = 5)
    comments.where(post_id: self[:id]).order(created_at: :desc).limit(limit)
  end
  after_save :incrementpostcounter

  private

  def incrementpostcounter
    author.update(posts_count: author.posts.size)
  end
end
