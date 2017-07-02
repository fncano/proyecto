class ProgramacionesController < ApplicationController
  load_and_authorize_resource
  
  before_action :set_programacion, only: [:show, :edit, :update, :destroy]

  # GET /programaciones
  # GET /programaciones.json
  def index
    @programaciones = Programacion.search(params[:search], params[:page])
  end

  # GET /programaciones/1
  # GET /programaciones/1.json
  def show
  end

  # GET /programaciones/new
  def new
    @programacion = Programacion.new
  end

  # GET /programaciones/1/edit
  def edit
  end

  # POST /programaciones
  # POST /programaciones.json
  def create
    @programacion = Programacion.new(programacion_params)

    respond_to do |format|
      if @programacion.save
        format.html { redirect_to programaciones_path, notice: 'Se ha Creado un Registro.' }
        format.json { render :show, status: :created, location: @programacion }
      else
        format.html { render :new }
        format.json { render json: @programacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /programaciones/1
  # PATCH/PUT /programaciones/1.json
  def update
    respond_to do |format|
      if @programacion.update(programacion_params)
        format.html { redirect_to programaciones_path, notice: 'Se ha Modificado el Registro.' }
        format.json { render :show, status: :ok, location: @programacion }
      else
        format.html { render :edit }
        format.json { render json: @programacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /programaciones/1
  # DELETE /programaciones/1.json
  def destroy
    @programacion.destroy
    respond_to do |format|
      format.html { redirect_to programaciones_url, notice: 'Se ha Borrado el Registro.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_programacion
      @programacion = Programacion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def programacion_params
      params.require(:programacion).permit(:fecha, :num_progr, :cliente, :fecha_entrega, :empleado, :cant, :prenda, :pieza, :talla, :val_uni, :total, :subtotal, :iva, :total)
    end
end
