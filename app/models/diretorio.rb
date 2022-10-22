class Diretorio < ApplicationRecord
  validates :name, presence: { message: 'É obrigatório informar o nome!'}
  validates :name, format: { :with => /\A[a-zA-Z0-9 ]+[a-zA-Z0-9 ]+[a-zA-Z0-9 ]\Z/,
    :message => 'Nome inválido. Não é permitido a utilização dos caracteres especiais'}
  validates :name, format: { :with => /\A(?!root$)\Z/,
                             :message => 'Nome reservado. root é o nome para o diretório raiz'}
end
