class BuscarDiretorioController < ApplicationController
   def show
    @diretorio = Diretorio.find(params[:id])
   end

   private
   def busca_params
     params.require(:buscar).permit(:search_input)
   end
end
