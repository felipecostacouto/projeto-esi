class CampiController < ApplicationController
  before_action :set_campi, only: %i[ show edit update destroy ]
  $rootId = 1
  # GET /campi or /campi.json
  def index
    @campi = Campi.where.not(name: 'root')
  end

  # GET /campi/1 or /campi/1.json
  def show
    @campi_mapa = CampiMapa.new
  end

  # GET /campi/new
  def new
    @campi = Campi.new
    @campi = Campi.all

    @campi_parent_id = params[:campi_parent_id]
  end

  # GET /campi/1/edit
  def edit
    @campi = Campi.where.not(id: @campi.id)
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_diretorio
    @diretorio = Campi.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def campi_params
    params.require(:campi).permit(:name, :path)
  end
end
