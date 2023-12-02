class Post < ApplicationRecord
  belongs_to :user, foreign_key: 'author_id', counter_cache: true
  has_many :comments
  has_many :likes
  validates :title, presence: true, length: { maximum: 250 }
  validates :likes_counter, presence: false, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :comments_counter, presence: false, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  def mostrecentcomments
    omments.where(post_id: self[:id]).order(created_at: :desc).limit(5)
  end
  after_create :incrementpostcounter

  private

  def incrementpostcounter
    author.increment!(posts_counter: user.posts.size)
  end
end
