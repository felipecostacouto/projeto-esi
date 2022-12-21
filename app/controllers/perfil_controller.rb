class PerfilController < ApplicationController
    def perfil
        checkSession()
    end
    def editprofile
        if session[:user_id] == nil
            redirect_to login_path
        else
            if Current.user.update(user_params)
                redirect_to perfil_path, notice: 'Perfil atualizado com sucesso!'
            else
                render :perfil, status: 422
            end
        end
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

    private
    
    def user_params
        params.require(:user).permit(:name, :email, :password)
    end
end
