require 'rails_helper'

RSpec.describe DiretoriosMapa, type: :model do
  it 'Diretorios nao existentes' do
    mapa = double('diretorios_mapa')
    allow(mapa).to receive(:get_parent_directory).and_return(1)

    diretorio_mapa = DiretoriosMapa.new
    diretorio_mapa.parent = 1

    mapa.stub(:get_parent_directory).and_return(1)
  end

  it 'Todos diretorios validos' do
    @ids = DiretoriosMapa.ids

    for i in 0..(@ids.length - 1) do
      @diretorio = Diretorio.find(DiretoriosMapa.find(@ids[i]).parent)
      expect(@diretorio).not_to be(nil)
    end
  end

  it 'Sem redundancia de ids' do
    @ids = DiretoriosMapa.ids

    (0..(@ids.length - 1)).each { |i|
      @mapa = DiretoriosMapa.find(@ids[i])

      (0..(@ids.length - 1)).each { |j|
        if j != i
          @mapaToCompare = DiretoriosMapa.find(@ids[j])
          expect(@mapaToCompare.parent).not_to be(@mapa.parent)
          expect(@mapaToCompare.child).not_to be(@mapa.child)
        end
      }
    }
  end
end
