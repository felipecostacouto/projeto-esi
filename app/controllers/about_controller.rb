class AboutController < ApplicationController

  def index
    @about = About.all
  end

  def create
    @about = About.new(about_params)
    if @about.save
      redirect_to about_path, notice: "Sua sugestão foi recebida por nossa equipe, agradecemos a colaboração!"
    else
      redirect_to about_path, notice: "É obrigatório inserir algum texto no campo de sugestões!"
    end
  end

    def about_params
      params.require(:about).permit(:sugestao)
    end
end
