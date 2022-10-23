class DiretoriosController < ApplicationController
  before_action :set_diretorio, only: %i[ show edit update destroy ]

  # GET /diretorios or /diretorios.json
  def index
    @diretorios = Diretorio.all
  end

  # GET /diretorios/1 or /diretorios/1.json
  def show
  end

  # GET /diretorios/new
  def new
    @diretorio = Diretorio.new
  end

  # GET /diretorios/1/edit
  def edit
  end

  # POST /diretorios or /diretorios.json
  def create
    @diretorio = Diretorio.new(diretorio_params)

    respond_to do |format|
      if @diretorio.save
        format.html { redirect_to diretorio_url(@diretorio), notice: "Diretorio foi criado com sucesso." }
        format.json { render :show, status: :created, location: @diretorio }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @diretorio.errors, status: :unprocessable_entity }
      end

      puts "----->>>>>" << @diretorio.id.to_s
    end
  end

  # PATCH/PUT /diretorios/1 or /diretorios/1.json
  def update
    respond_to do |format|
      if @diretorio.update(diretorio_params)
        format.html { redirect_to diretorio_url(@diretorio), notice: "Diretorio foi atualizado com sucesso." }
        format.json { render :show, status: :ok, location: @diretorio }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @diretorio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /diretorios/1 or /diretorios/1.json
  def destroy
    @diretorio.destroy

    respond_to do |format|
      format.html { redirect_to diretorios_url, notice: "Diretorio foi excluido com sucesso." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_diretorio
      @diretorio = Diretorio.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def diretorio_params
      params.require(:diretorio).permit(:name, :path)
    end
end
