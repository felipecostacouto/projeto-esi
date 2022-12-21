require 'rails_helper'

RSpec.describe "Abouts", type: :request do
  let(:valid_attributes) {
    {
      "sugestao" => 'Teste'
    }
  }
  describe "GET /index" do
    it "renders a successful response" do
      get about_url
      expect(response).to be_successful
    end
  end
end
