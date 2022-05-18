require 'rails_helper'

RSpec.describe "StaticPages", type: :request do
  
  describe "GET root" do
    it 'returns http success' do
      get root_url
      expect(response).to have_http_status(:success)
      expect(response.body).to include("<title>Home</title>")
    end
  end

  describe "GET /static_pages/help" do
    it 'returns http success' do
      get static_pages_help_url
      expect(response).to have_http_status(:success)
      expect(response.body).to include("<title>Help</title>")
    end
  end

  describe "GET /static_pages/about" do
    it 'returns http success' do
      get static_pages_about_url
      expect(response).to have_http_status(:success)
      expect(response.body).to include("<title>About</title>")
    end
  end
end
