class About < ApplicationRecord
  validates :sugestao, presence: { message: "É obrigatório inserir algum texto no campo de sugestões!"}
end
