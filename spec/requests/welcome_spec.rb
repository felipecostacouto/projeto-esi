require 'rails_helper'

RSpec.describe "Welcomes", type: :request do
  describe "GET /login" do
    it "returns http success" do
      get "/welcome/login"
      expect(response).to have_http_status(:success)
    end
  end

end
