class GaleriaProcesosController < ApplicationController


  # GET /galeria_procesos
  # GET /galeria_procesos.json
  def index
    @galeria_procesos = GaleriaProceso.all
    @empresa = Empresa.find(params[:empresa_id])   
    @producto = @empresa.productos.find(params[:producto_id])
    @galeria_procesos = @producto.galeria_procesos
  end

  # GET /galeria_procesos/1
  # GET /galeria_procesos/1.json
  def show
    
    @empresa = Empresa.find(params[:empresa_id])   
    @producto = @empresa.productos.find(params[:producto_id])
    @galeria_proceso = @producto.galeria_procesos.find(params[:id])
  end

  # GET /galeria_procesos/new
  def new
    
    @empresa = Empresa.find(params[:empresa_id])   
    @producto = @empresa.productos.find(params[:producto_id])
    @galeria_proceso = @producto.galeria_procesos.new
  end

  # GET /galeria_procesos/1/edit
  def edit
    @empresa = Empresa.find(params[:empresa_id])   
    @producto = @empresa.productos.find(params[:producto_id])
    @galeria_proceso = @producto.galeria_procesos.find(params[:id])

  end

  # POST /galeria_procesos
  # POST /galeria_procesos.json
  def create
    @empresa = Empresa.find(params[:empresa_id])   
    @producto = @empresa.productos.find(params[:producto_id])
    @galeria_procesos = @producto.galeria_procesos.build(galeria_proceso_params)
    respond_to do |format|
      if @galeria_proceso.save
        format.html { redirect_to empresa_producto_galeria_proceso_path(@empresa,@producto,@galeria_proceso), notice: 'Galeria proceso was successfully created.' }
        format.json { render :show, status: :created, location: @galeria_proceso }
      else
        format.html { render :new }
        format.json { render json: @galeria_proceso.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /galeria_procesos/1
  # PATCH/PUT /galeria_procesos/1.json
  def update
    @empresa = Empresa.find(params[:empresa_id])   
    @producto = @empresa.productos.find(params[:producto_id])
    @galeria_procesos = @producto.galeria_procesos.find(params[:id])
    respond_to do |format|
      if @galeria_proceso.update(galeria_proceso_params)
        format.html { redirect_to empresa_producto_galeria_procesos_path, notice: 'Galeria proceso was successfully updated.' }
        format.json { render :show, status: :ok, location: @galeria_proceso }
      else
        format.html { render :edit }
        format.json { render json: @galeria_proceso.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /galeria_procesos/1
  # DELETE /galeria_procesos/1.json
  def destroy
    @empresa = Empresa.find(params[:empresa_id])   
    @producto = @empresa.productos.find(params[:producto_id])
    @galeria_proceso = @producto.galeria_procesos.find(params[:id])
    @galeria_proceso.destroy
    respond_to do |format|
      format.html { redirect_to empresa_producto_galeria_procesos_path, notice: 'Galeria proceso was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.

    # Never trust parameters from the scary internet, only allow the white list through.
    def galeria_proceso_params
      params.require(:galeria_proceso).permit(:título, :descrición,:image)
    end
end
