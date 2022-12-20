require 'rails_helper'

RSpec.describe "welcome/login.html.erb", type: :view do
  it 'invalido sem email' do
    @login = User.new
    @login.email = "teste@gmail.com"
    expect(@login).not_to be_valid
  end
end
