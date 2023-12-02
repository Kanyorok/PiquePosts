require 'rails_helper'

RSpec.describe Post, type: :model do
  subject(:user) { User.new(name: 'Essie', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Software Developer from Ethi.') }
  subject(:post) { Post.new(title: 'hello world', text: 'Hello world paragraph', author_id: user.id) }
  before { user.save }
  before { post.save }
  it 'should be valid post' do
    expect(post).to be_valid
  end
  it 'should be invalid post' do
    post.title = nil
    expect(post).to_not be_valid
  end
  it 'should be invalid post [maximum length for title is 250]' do
    post.title = '
    Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of
    Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics,
    very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..",
    comes from a line in section 1.10.32.'
    expect(post).to_not be_valid
  end
  it 'should have post counter to 1' do
    expect(post.author.posts_count).to be(1)
  end
  it 'should have a comments_counter greater than or equal to 0' do
    post = user.posts.build(title: 'Test Post', comments_count: -1)
    expect(post).to_not be_valid
    post.comments_count = 0
    expect(post).to be_valid
  end

  it 'should have a likes_counter greater than or equal to 0' do
    post = user.posts.build(title: 'Test Post', likes_count: -1)
    expect(post).to_not be_valid
    post.likes_count = 0
    expect(post).to be_valid
  end
  describe '#recent_comments' do
    it 'returns the specified number of most recent comments' do
      post = user.posts.create(title: 'Test Post')
      post.comments.create(text: 'Comment 1', user:)
      comment2 = post.comments.create(text: 'Comment 2', user:)
      comment3 = post.comments.create(text: 'Comment 3', user:)

      recent_comments = post.mostrecentcomments(2)
      expect(recent_comments).to eq([comment3, comment2])
    end
  end

  describe 'after_save callback' do
    it 'increments author\'s posts_counter after saving' do
      expect do
        user.posts.create(title: 'Test Post')
      end.to change { user.reload.posts_count }.by(1)
    end
  end
end
