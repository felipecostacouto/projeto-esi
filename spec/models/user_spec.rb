require 'rails_helper'

RSpec.describe User, type: :model do
  
  it 'invalido sem nome' do
    user = User.new(email: "teste@gmail.com")
    expect(user).not_to be_valid
  end

  it 'invalido com email com formato invalido' do
    a = User.new
    a.name= "joao" 
    a.email = "a,@gmail.com"    
    expect(a).not_to be_valid
  end

end
