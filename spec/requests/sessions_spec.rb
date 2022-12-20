require 'rails_helper'

RSpec.describe "Sessions", type: :request do
  let(:valid_attributes) {
    { 
        "name" => 'Teste',
        "email" => 'emailteste@gmail.com',
        "password" => '123'
    }
  }
  describe "POST /logout" do
    it "redirects to home" do
      user = User.create! valid_attributes
      post login_path, params: { user: valid_attributes }
      expect(response).to redirect_to(root_path)
      delete logout_path
      expect(response).to redirect_to(root_path)
    end
  end
end