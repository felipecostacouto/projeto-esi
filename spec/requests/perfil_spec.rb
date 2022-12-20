require 'rails_helper'

RSpec.describe "Perfils", type: :request do
  let(:valid_attributes) {
    { 
        "name" => 'Teste',
        "email" => 'emailteste@gmail.com',
        "password" => '123'
    }
  }
  describe "GET /perfil" do
    it "renders a successful response" do
      user = User.create! valid_attributes
      post login_path, params: { user: valid_attributes }
      expect(response).to redirect_to(root_path)
      get perfil_path
      expect(response).to be_successful
  end
  end
end
