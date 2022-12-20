require 'rails_helper'

RSpec.describe 'registrations/new.html.erb', type: :view do
    before(:each) do
        @User = User.new
    end
      it "renders new user form" do
        render
        assert_select "label", count: 4
        assert_select "button", count: 1
        assert_select "input", count: 4
    end
end