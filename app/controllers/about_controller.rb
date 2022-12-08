class AboutController < ApplicationController

  def new
    @about = About.new
  end
  def index
    @about = About.all
  end

  def create
    @about = About.new(about_params)
    if @about.save
      redirec_to @about, flash[:alert] = "Sua sugestão foi recebida por nossa equipe, agradecemos a colaboração!"
    else
      flash[:alert] = "É obrigatório inserir algum texto no campo de sugestões!"
      render :new
    end
  end

  def show
    @about = About.find(params[:id])
  end

    private
    def about_params
      params.require(:about).permit(:sugestao)
    end
end
