class BuscarController < ApplicationController
    def index
     @diretorio = Diretorio.all
   end

   def search
      @diretorio = Diretorio.where("name LIKE ?", "%" + params[:name] + "%")
   end

  def show
    @diretorio = Diretorio.where("name LIKE ?", "%" + params[:name] + "%")
    if params[:name].blank?
       redirect_to buscar_path, notice: "Por favor insira nome válido"
    elsif params[:name].present?
       @diretorio = Diretorio.where("name LIKE ?", "%" + params[:name] + "%")
    end
  end

   def busca_params
     params.require(:diretorio).permit(:name)
   end
end
