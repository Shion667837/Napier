require 'rails_helper'

RSpec.describe "Posts", type: :request do
  describe "GET /posts/show" do
    let(:post) { create(:post) }

    before { get post_path(post) }

    it "レスポンスが正しく返ってくるか" do
      expect(response).to have_http_status 200
    end
  end
end
