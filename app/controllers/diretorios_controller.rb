class DiretoriosController < ApplicationController
  before_action :set_diretorio, only: %i[ show edit update destroy ]
  $rootId = 1
  # GET /diretorios or /diretorios.json
  def index
    @diretorios = Diretorio.where.not(name: 'root')
  end

  # GET /diretorios/1 or /diretorios/1.json
  def show
    @diretorio_mapa = DiretoriosMapa.new
  end

  # GET /diretorios/new
  def new
    @diretorio = Diretorio.new
    @diretorios = Diretorio.all

    @diretorio_parent_id = params[:diretorio_parent_id]
  end

  # GET /diretorios/1/edit
  def edit
    @diretorios = Diretorio.where.not(id: @diretorio.id)
  end

  # POST /diretorios or /diretorios.json
  def create
    @diretorio = Diretorio.new(diretorio_params)
    if @diretorio.created_at == nil
      @diretorio.created_at = Time.now
    end
    @parent_id = params[:diretorio][:parent_ID]

    respond_to do |format|
      if @diretorio.save
        if @parent_id == nil or @parent_id == ""
          @parent_id = $rootId
        end

        @diretorio_mapa = DiretoriosMapa.new({:parent => @parent_id, :child => @diretorio.id})

        if @diretorio_mapa.save
          format.html { redirect_to diretorio_url(Diretorio.find(@parent_id)), notice: "Diretorio foi criado com sucesso." }
          format.json { render :show, status: :created, location: @diretorio }
        end
      else
        @diretorios = Diretorio.all
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @diretorio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /diretorios/1 or /diretorios/1.json
  def update
    respond_to do |format|
      if @diretorio.update(diretorio_params)
        format.html { redirect_to diretorio_url(@diretorio), notice: "Diretorio foi atualizado com sucesso." }
        format.json { render :show, status: :ok, location: @diretorio }
      else
        @diretorios = Diretorio.where.not(id: @diretorio.id)
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
  def delete_diretorio
    Diretorio.destroy(params[:id])

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
