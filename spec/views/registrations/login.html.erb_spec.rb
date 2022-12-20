require 'rails_helper'

RSpec.describe "registrations/login.html.erb", type: :view do
    before(:each) do
        @User = User.new
    end
      it "renders new user login form" do
        render
        assert_select "label", count: 3
        assert_select "button", count: 1
        assert_select "input", count: 3
        assert_select "a", count: 1
    end
end