require 'rails_helper'

RSpec.describe "Mypage::Posts", type: :request do
  describe "GET /mypage/posts" do
    it "works! (now write some real specs)" do
      get mypage_posts_index_path
      expect(response).to have_http_status(200)
    end
  end
end
