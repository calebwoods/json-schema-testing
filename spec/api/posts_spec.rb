require 'rails_helper'

RSpec.describe PostsController, type: :request do
  include_context 'API'

  describe 'GET index' do
    context 'get all published posts' do
      let!(:author) do
        Author.create!(name: 'Test Author')
      end
      let!(:draft_post) do
        Post.create!(author: author, title: 'Draft', content: 'Great stuff')
      end
      let!(:published_post) do
        Post.create!(author: author, title: 'Published', published_at: 1.day.ago, content: 'Better stuff')
      end
      let!(:comment) do
        Comment.create!(author: author, post: published_post, content: 'Well done')
      end

      before { api_get 'posts' }

      specify do
        expect(json_body['posts'].count).to eq 1
        expect(response).to match_response_schema('posts')
        expect(json_body['posts'].first['author']['name']).to eq author.name
      end
    end
  end
end
