class DiretoriosMapa < ApplicationRecord
  def get_parent_directory(directory_id)
    if directory_id == Diretorio.new.get_root_directory_id
      Diretorio.new.get_root_directory
    else
      @diretorio_mapa = DiretoriosMapa.find_by(child: directory_id)

      if @diretorio_mapa != nil
        Diretorio.where(id: @diretorio_mapa[:parent])[0]
      end
    end
  end

  def parent_is_root(directory_id)
    get_parent_directory(directory_id).id == Diretorio.new.get_root_directory_id
  end
end
