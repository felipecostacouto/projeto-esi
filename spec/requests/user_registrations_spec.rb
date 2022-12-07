require 'rails_helper'

RSpec.describe "/registrations", type: :request do
    let(:valid_attributes) {
        { 
            "name" => 'Teste',
            "email" => 'emailteste@gmail.com',
            "password" => '123'
        }
      }
    
      let(:invalid_attributes) {
        { 
            "name" => 'Teste',
            "email" => 'emailteste',
            "password" => '123'
        }
      }

      describe "GET /login" do
        it "renders a sucessful response" do
            get login_path
            expect(response).to be_successful
        end
      end

      describe "POST /login" do
        context "with valid parameters" do
            it "redirects to home" do
                user = User.create! valid_attributes
                post login_path, params: { user: valid_attributes }
                expect(response).to redirect_to(root_path)
            end
        end
      end

      describe "GET /new" do
        it "renders a successful response" do
            get signup_path
            expect(response).to be_successful
        end
      end

      describe "POST /create" do
        context "with valid parameters" do
        it "create a user sucessful" do
            expect {
                post signup_path, params: { user: valid_attributes }
              }.to change(User, :count).by(1)
        end
        it "redirects to home page" do
            post signup_path, params: { user: valid_attributes }
            expect(response).to redirect_to(root_path)
        end
      end
        context "with invalid parameters" do
            it "does not create a user" do
                expect {
                    post signup_path, params: { user: invalid_attributes }
                  }.to change(User, :count).by(0)
            end
        end
    end
end