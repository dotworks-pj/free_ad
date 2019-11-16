# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Mypage::Places', type: :request do
  describe 'GET /mypage/places' do
    it 'works! (now write some real specs)' do
      get mypage_places_index_path
      expect(response).to have_http_status(200)
    end
  end
end
