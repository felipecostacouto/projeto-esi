require 'rails_helper'
require 'spec_helper'

RSpec.describe About, type: :model do
  it 'invalido sem texto' do
    about = About.new
    expect(about).not_to be_valid
  end
end
