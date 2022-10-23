require 'rails_helper'

RSpec.describe Diretorio, type: :model do
  it 'Inválido sem nome' do
    diretorio = Diretorio.new
    diretorio.path = 'root'
    expect(diretorio).not_to be_valid
  end

  it 'Inválido com Nome fora do padrão' do
    diretorio = Diretorio.new
    diretorio.name = '*ESI*'
    diretorio.path = 'root'
    expect(diretorio).not_to be_valid
  end

  it 'Válido com campos preenchido corretamente' do
    diretorio = Diretorio.new
    diretorio.name = 'Teste'
    diretorio.path = 'root'
  end
end
