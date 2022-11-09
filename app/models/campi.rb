class Campi < ApplicationRecord
  validates :name, presence: { message: 'É obrigatório informar o nome!'}
  validates :name, format: { :with => /\A[a-zA-Z0-9 çãáâéêíóôú]+[a-zA-Z0-9 çãáâéêíóôú]+[a-zA-Z0-9 çãáâéêíóôú]\Z/,
                             :message => 'Nome inválido. Não é permitido a utilização dos caracteres especiais'}
  ##validates :name, format: { :with => /A(?!root$)z/,
  ##                          :message => 'Nome reservado. root é o nome para o diretório raiz'}


  def get_root_campi_id
    @campi_root = Campi.where(name: 'root').ids[0]

    if @campi_root == nil
      create_root_campi.id
    else
      @campi_root
    end
  end

  def get_root_campi
    @root_id = get_root_campi_id

    if @root_id == nil
      create_root_campi
    else
      Campi.find(@root_id)
    end
  end

  def create_root_campi
    @campi_root = Campi.new({name: 'root', path: '/'})
    @campi_root.save
    @campi_root
  end
end
