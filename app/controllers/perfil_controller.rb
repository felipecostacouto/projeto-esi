class PerfilController < ApplicationController
    def perfil
        checkSession()
    end
    def checkSession
        if session[:user_id] == nil
            redirect_to login_path
        else
            showData()
        end
    end
    def showData
        user = User.where(id: session[:user_id])
        if !user.present?
            redirect_to perfil_path, notice: "Usuário não encontrado!";
        end
    end
end
