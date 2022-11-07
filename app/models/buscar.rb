class Buscar < ApplicationRecord
    validates :search_input, {presence: "É obrigatório digitar o nome para buscar!"}
end
