require 'rails_helper'

RSpec.describe 'Posts', type: :request do
  let(:user) { User.create(name: 'user1', posts_count: 0) }
  let(:post) { user.posts.create(Title: 'title1', comments_count: 0, likes_count: 0) }

  describe 'GET users/:user_id/posts' do
    before :each do
      get "/users/#{user.id}/posts"
    end

    it 'returns http success' do
      expect(response).to have_http_status(:success)
    end

    it 'renders the index template' do
      expect(response).to render_template('index')
    end

    it 'renders the correct text' do
      expect(response.body).to match(/Number of Posts/)
    end
  end

  describe 'GET users/:user_id/posts/:id' do
    before :each do
      get "/users/#{user.id}/posts/#{post.id}"
    end

    it 'returns http success' do
      expect(response).to have_http_status(:success)
    end

    it 'renders the show template' do
      expect(response).to render_template('show')
    end

    it 'renders the correct text' do
      expect(response.body).to match(/Likes/)
    end
  end
end
