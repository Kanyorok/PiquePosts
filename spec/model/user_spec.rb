require 'rails_helper'
# frozen_string_literal: true

RSpec.describe User, type: :model do
  subject(:user) { User.new(name: 'James', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Software Developer from Kenya.') }
  before { subject.save }
  it 'is valid subject' do
    expect(user).to be_valid
  end

  it 'is not valid without name' do
    user.name = nil
    expect(user).to_not be_valid
  end

  it 'should return post_count as zero' do
    expect(user.posts.size).to be(0)
  end
  it 'should return post count as one' do
    post = Post.create(title: 'hello', text: 'hello world test', author_id: user.id)
    expect(post.author.posts_count).to eq(1)
    expect(post.author.posts.size).to eq(1)
  end
  it 'should be invalid on non integer post counter' do
    user.posts_count = 'dd'
    expect(user).to_not be_valid
  end
  it 'should be invalid for  negetive integer post counter' do
    user.posts_count = -1
    expect(user).to_not be_valid
  end
  describe '#recentposts' do
    it 'returns the 3 most recent posts' do
      user = User.create(name: 'Robby K!')
      post1 = Post.create(title: 'Post 1', author: user, created_at: 4.days.ago)
      post2 = Post.create(title: 'Post 2', author: user, created_at: 3.days.ago)
      post3 = Post.create(title: 'Post 3', author: user, created_at: 2.days.ago)
      recent_posts = user.recentposts
      expect(recent_posts).to eq([post3, post2, post1])
    end
  end
end
