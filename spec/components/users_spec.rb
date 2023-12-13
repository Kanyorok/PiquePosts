require 'rails_helper'

RSpec.describe 'Users', type: :request do
  let(:user) { User.create(name: 'Name 1', posts_count: 0) }
  describe 'GET /' do
    before :each do
      get '/users'
    end

    it 'returns http success' do
      expect(response).to have_http_status(:success)
    end

    it 'renders the index template' do
      expect(response).to render_template('index')
    end

    it 'renders the correct text' do
      expect(response.body).to match(/All User Posts/)
    end
  end

  describe 'GET /users/:id' do
    before :each do
      get "/users/#{user.id}"
    end

    it 'returns http success' do
      expect(response).to have_http_status(:success)
    end

    it 'renders the show template' do
      expect(response).to render_template('show')
    end

    it 'renders the correct text' do
      expect(response.body).to match(/Number of Posts/)
    end
  end
end
