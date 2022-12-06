require 'rails_helper'

RSpec.describe DiretoriosMapa, type: :model do
  it 'Diretorios nao existentes' do
    mapa = double('diretorios_mapa')
    allow(mapa).to receive(:get_parent_directory).and_return(1)

    diretorio_mapa = DiretoriosMapa.new
    diretorio_mapa.parent = 1

    mapa.stub(:get_parent_directory).and_return(1)
  end
end
