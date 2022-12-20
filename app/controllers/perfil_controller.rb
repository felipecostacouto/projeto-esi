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
    end
end
