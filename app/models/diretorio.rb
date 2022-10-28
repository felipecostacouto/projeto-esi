class Diretorio < ApplicationRecord
  validates :name, presence: { message: 'É obrigatório informar o nome!'}
  validates :name, format: { :with => /\A[a-zA-Z0-9 çãáâéêíóôú]+[a-zA-Z0-9 çãáâéêíóôú]+[a-zA-Z0-9 çãáâéêíóôú]\Z/,
    :message => 'Nome inválido. Não é permitido a utilização dos caracteres especiais'}
  ##validates :name, format: { :with => /A(?!root$)z/,
  ##                          :message => 'Nome reservado. root é o nome para o diretório raiz'}


  def get_root_directory_id
    Diretorio.where(name: 'root').ids[0]
  end

  def get_root_directory
    Diretorio.find(get_root_directory_id)
  end
end
