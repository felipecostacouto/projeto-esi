require 'rails_helper'
require 'spec_helper'

RSpec.describe Buscar, type: :model do
  it 'invalido sem nome' do
    search-input = " "
    expect(search_input).not_to be_valid
  end
end
