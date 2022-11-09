class User < ApplicationRecord
    validates :name, presence: { message: "É obrigatório informar o nome!" }
    validates :email, presence: { message: "É obrigatório informar o email!" }, format: { with: URI::MailTo::EMAIL_REGEXP, message: "Formato de e-mail inválido!" }
    validates :password, presence: { message: "É obrigatório informar uma senha!" }
    validates_presence_of :name
end
