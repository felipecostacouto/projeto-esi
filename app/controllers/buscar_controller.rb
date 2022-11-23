class BuscarController < ApplicationController
  def new
  end

  def show
    @diretorio = Diretorio.find_by(id: params[:id])
  end

   def search
        @diretorio = Diretorio.super_search(name: params[:name])
       if @diretorio.validates?
        Flash[:alert] = "O Diretório que você está buscando não existe!"
      else
        redirect_to buscar_path, notice: "FOUND"
      end
   end

   private
   def busca_params
     params.require(:diretorio).permit(:name)
   end
end
