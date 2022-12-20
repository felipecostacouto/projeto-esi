require 'rails_helper'
require 'spec_helper'

RSpec.describe Buscar, type: :model do
  it 'Inválido sem nome' do
    diretorio = Diretorio.show
    diretorio.nome = " "
    expect(buscar).not_to be_valid
  end
end

it 'invalido com nome não existe' do
  a = Diretorio.show
  a.nome= "aws"
  expect(a).not_to be_valid
end
