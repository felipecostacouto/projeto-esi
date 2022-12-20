class Buscar < ApplicationRecord
    validates :buscar, presence: { message: "Por favor insira nome válido" }
    validates :buscar, presence: {message: "Diretório não encontrado, por favor tente novamente."}
end
