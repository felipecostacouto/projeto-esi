class BuscarController < ApplicationController
  @search_input = 'root'
  @diretorio = Diretorio.new

  def new
  end

  def show
    @diretorio = Diretorio.find_by_name(params[:name])
    if @diretorio.nil?
      redirect_to buscar_path, notice: "Diretorio nao encontrado"
    end
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
