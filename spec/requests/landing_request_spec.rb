require 'rails_helper'

RSpec.describe "Landings", type: :request do

  describe "GET /home" do
    it "returns http success" do
      get "/landing/home"
      expect(response).to have_http_status(:success)
    end
  end

end
