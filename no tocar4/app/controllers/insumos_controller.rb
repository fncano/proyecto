class InsumosController < ApplicationController
  load_and_authorize_resource
  
  before_action :set_insumo, only: [:show, :edit, :update, :destroy]

  # GET /insumos
  # GET /insumos.json
  def index
    @insumos = Insumo.search(params[:search], params[:page])
  end

  # GET /insumos/1
  # GET /insumos/1.json
  def show
  end

  # GET /insumos/new
  def new
    @insumo = Insumo.new
  end

  # GET /insumos/1/edit
  def edit
  end

  # POST /insumos
  # POST /insumos.json
  def create
    @insumo = Insumo.new(insumo_params)

    respond_to do |format|
      if @insumo.save
        format.html { redirect_to insumos_path, notice: 'Se ha creado un nuevo rgistro.' }
        format.json { render :show, status: :created, location: @insumo }
      else
        format.html { render :new }
        format.json { render json: @insumo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /insumos/1
  # PATCH/PUT /insumos/1.json
  def update
    respond_to do |format|
      if @insumo.update(insumo_params)
        format.html { redirect_to insumos_path, notice: 'Se ha modificado el Registro.' }
        format.json { render :show, status: :ok, location: @insumo }
      else
        format.html { render :edit }
        format.json { render json: @insumo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /insumos/1
  # DELETE /insumos/1.json
  def destroy
    @insumo.destroy
    respond_to do |format|
      format.html { redirect_to insumos_url, notice: 'Se ha Borrado el Registro.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_insumo
      @insumo = Insumo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def insumo_params
      params.require(:insumo).permit(:fecha, :num_fact, :proveedor, :documento, :numero, :empleado, :cant, :detalle, :val_uni, :total, :subtotal, :iva, :total)
    end
end
