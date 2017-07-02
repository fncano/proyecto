class ProduccionesController < ApplicationController
  load_and_authorize_resource
  
  before_action :set_produccion, only: [:show, :edit, :update, :destroy]

  # GET /producciones
  # GET /producciones.json
  def index
    @producciones = Produccion.search(params[:search], params[:page])
  end

  # GET /producciones/1
  # GET /producciones/1.json
  def show
  end

  # GET /producciones/new
  def new
    @produccion = Produccion.new
  end

  # GET /producciones/1/edit
  def edit
  end

  # POST /producciones
  # POST /producciones.json
  def create
    @produccion = Produccion.new(produccion_params)

    respond_to do |format|
      if @produccion.save
        format.html { redirect_to producciones_path, notice: 'Se ha creado un Registro.' }
        format.json { render :show, status: :created, location: @produccion }
      else
        format.html { render :new }
        format.json { render json: @produccion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /producciones/1
  # PATCH/PUT /producciones/1.json
  def update
    respond_to do |format|
      if @produccion.update(produccion_params)
        format.html { redirect_to producciones_path, notice: 'Se ha Modificado el Registro.' }
        format.json { render :show, status: :ok, location: @produccion }
      else
        format.html { render :edit }
        format.json { render json: @produccion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /producciones/1
  # DELETE /producciones/1.json
  def destroy
    @produccion.destroy
    respond_to do |format|
      format.html { redirect_to producciones_url, notice: 'Se ha Borrado el Registro.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_produccion
      @produccion = Produccion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def produccion_params
      params.require(:produccion).permit(:fecha, :num_fact, :cliente, :fecha_entre, :empleado, :cant, :prenda, :pieza, :talla, :val_uni, :total, :subtotal, :iva, :total)
    end
end
