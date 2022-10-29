class Diretorio < ApplicationRecord
  validates :name, presence: { message: 'É obrigatório informar o nome!'}
  validates :name, format: { :with => /\A[a-zA-Z0-9 çãáâéêíóôú]+[a-zA-Z0-9 çãáâéêíóôú]+[a-zA-Z0-9 çãáâéêíóôú]\Z/,
    :message => 'Nome inválido. Não é permitido a utilização dos caracteres especiais'}
  ##validates :name, format: { :with => /A(?!root$)z/,
  ##                          :message => 'Nome reservado. root é o nome para o diretório raiz'}


  def get_root_directory_id
    @diretorio_root = Diretorio.where(name: 'root').ids[0]

    if @diretorio_root == nil
      create_root_directory.id
    else
      @diretorio_root
    end
  end

  def get_root_directory
    @root_id = get_root_directory_id

    if @root_id == nil
      create_root_directory
    else
      Diretorio.find(@root_id)
    end
  end

  def create_root_directory
    @diretorio_root = Diretorio.new({name: 'root', path: '/'})
    @diretorio_root.save
    @diretorio_root
  end
end
