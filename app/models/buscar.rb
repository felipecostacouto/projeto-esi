class Buscar < ApplicationRecord
    validates :buscar, presence: { message: "É obrigatório informar o nome do diretório para busca!" }
    validates :buscar, presence: {message: "O Diretório que você está buscando não existe!"}
end
