class About < ApplicationRecord
  validates :sugestao, presence: { message: "Sua sugestão foi recebida por nossa equipe, agradecemos a colaboração!"}
  validates :sugestao, presence: { message: "É obrigatório inserir algum texto no campo de sugestões!"}
end
