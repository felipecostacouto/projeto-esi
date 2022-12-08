require 'rails_helper'

RSpec.describe Campi, type: :model do
  it 'Deve falhar por não possuir um nome' do
    campi = Campi.new
    campi.path = 'root'
    expect(campi).not_to be_valid
  end

  it 'Deve falhar por possuir nome fora do padrão' do
    campi = Campi.new
    campi.name = '*IME*'
    campi.path = 'root'
    expect(campi).not_to be_valid
  end

  it 'Deve passar com nome válido e preenchido corretamente' do
    campi = Campi.new
    campi.name = 'Instituto de Matemática e Estatística'
    campi.path = 'root'
  end
end
