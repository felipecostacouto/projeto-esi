require 'rails_helper'

RSpec.describe "perfil/perfil.html.erb", type: :view do
    let(:valid_attributes) {
        { 
            "name" => 'Teste',
            "email" => 'emailtesteinicial@gmail.com',
            "password" => '321'
        }
      }
    before(:each) do
        user = User.create! valid_attributes
        Current.user = user
    end
      it "renders new profile form" do
        render
        assert_select "form", count: 1
        assert_select "button", count: 1
        assert_select "input", count: 4
        assert_select "span", count: 3
        assert_select "img", count: 1
    end
end