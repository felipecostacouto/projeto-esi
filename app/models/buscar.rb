class Buscar < ApplicationRecord
    validates :search_input, presence: { message: "É obrigatório informar o nome do diretório para busca!" }
end
