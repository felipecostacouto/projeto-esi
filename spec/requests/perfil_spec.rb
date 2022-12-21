require 'rails_helper'

RSpec.describe "Perfils", type: :request do
  let(:valid_attributes) {
    { 
        "name" => 'Teste',
        "email" => 'emailtesteinicial@gmail.com',
        "password" => '321'
    }
  }
  let(:valid_attributes_changed) {
    { 
        "name" => 'Teste Depois',
        "email" => 'emailtestedepois@gmail.com'
    }
  }
  let(:invalid_attributes) {
    { 
        "name" => 'Teste',
        "email" => 'emailteste'
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
    it "goes to login page" do
      get perfil_path
      expect(response).to redirect_to(login_path)
    end
  end
  describe "PATCH /editprofile" do
    it "redirects to login page" do
      delete logout_path
      patch editprofile_path, params: { user: valid_attributes_changed }
      expect(response).to redirect_to(login_path)
    end
    it "renders a successful response" do
      user = User.create! valid_attributes
      post login_path, params: { user: valid_attributes }
      get perfil_path
      expect(response).to be_successful
      patch editprofile_path, params: { user: valid_attributes_changed }
      expect(response).to redirect_to(perfil_path)
    end
    it "renders a failure response" do
      user = User.create! valid_attributes
      post login_path, params: { user: valid_attributes }
      get perfil_path
      expect(response).to be_successful
      patch editprofile_path, params: { user: invalid_attributes }
      expect(response).to have_http_status(422)
    end
  end
end
