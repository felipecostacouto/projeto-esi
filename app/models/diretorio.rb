class Diretorio < ApplicationRecord
  validates :name, presence: { message: 'É obrigatório informar o nome!'}
  validates :name, format: { :with => /\A[a-zA-Z0-9 çãáâéêíóôú]+[a-zA-Z0-9 çãáâéêíóôú]+[a-zA-Z0-9 çãáâéêíóôú]\Z/,
    :message => 'Nome inválido. Não é permitido a utilização dos caracteres especiais'}
  ##validates :name, format: { :with => /A(?!root$)z/,
  ##                          :message => 'Nome reservado. root é o nome para o diretório raiz'}
end
