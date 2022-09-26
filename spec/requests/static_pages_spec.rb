require 'rails_helper'

RSpec.describe "StaticPages", type: :request do
  let(:base_title) { 'Ruby on Rails Tutorial Sample App' }
  describe "GET /" do
    it "returns http success" do
      get "/"
      aggregate_failures do
        expect(response).to have_http_status(:success)
        expect(response.body).to include base_title
        expect(response.body).to_not include "| #{base_title}"
      end
    end
  end

  # describe "GET /home" do
  #   it "returns http success" do
  #     get "/static_pages/home"
  #     expect(response).to have_http_status(:success)
  #     expect(response.body).to include "Home"
  #   end
  # end

  describe "GET /help" do
    it "returns http success" do
      get "/help"
      expect(response).to have_http_status(:success)
      expect(response.body).to include "Help"
    end
  end

  describe "GET /about" do
    it "returns http success" do
      get "/about"
      expect(response).to have_http_status(:success)
      expect(response.body).to include "About"
    end
  end

  describe "GET /contact" do
    it "returns http success" do
      get "/contact"
      expect(response).to have_http_status(:success)
      expect(response.body).to include "Contact"
    end
  end

  # describe "GET /" do
  #   it "returns http success" do
  #     get "/"
  #     expect(response).to have_http_status(:success)
  #     expect(response.body).to include "Home | Ruby on Rails Tutorial Sample App"
  #   end
  # end
end
