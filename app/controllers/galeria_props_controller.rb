class GaleriaPropsController < ApplicationController
  

  # GET /galeria_props
  # GET /galeria_props.json
  def index
    @empresa = Empresa.find(params[:empresa_id])   
    @producto = @empresa.productos.find(params[:producto_id])
    @prop_general = @producto.prop_generals.find(params[:prop_general_id])
    @galeria_props = @prop_general.galeria_props    
  end

  # GET /galeria_props/1
  # GET /galeria_props/1.json
  def show
    @empresa = Empresa.find(params[:empresa_id])   
    @producto = @empresa.productos.find(params[:producto_id])
    @prop_general = @producto.prop_generals.find(params[:prop_general_id])
    @galeria_prop = @prop_general.galeria_props.find(params[:id]) 
  end

  # GET /galeria_props/new
  def new
    @empresa = Empresa.find(params[:empresa_id])   
    @producto = @empresa.productos.find(params[:producto_id])
    @prop_general = @producto.prop_generals.find(params[:prop_general_id])
    @galeria_prop = @prop_general.galeria_props.new
  end

  # GET /galeria_props/1/edit
  def edit
    @empresa = Empresa.find(params[:empresa_id])   
    @producto = @empresa.productos.find(params[:producto_id])
    @prop_general = @producto.prop_generals.find(params[:prop_general_id])
    @galeria_prop = @prop_general.galeria_props.find(params[:id]) 
  end

  # POST /galeria_props
  # POST /galeria_props.json
  def create
    @empresa = Empresa.find(params[:empresa_id])   
    @producto = @empresa.productos.find(params[:producto_id])
    @prop_general = @producto.prop_generals.find(params[:prop_general_id])
    @galeria_prop = @prop_general.galeria_props.new(galeria_prop_params) 
    respond_to do |format|
      if @galeria_prop.save
        format.html { redirect_to empresa_producto_prop_general_galeria_props_path, notice: 'Galeria prop was successfully created.' }
        format.json { render :show, status: :created, location: @galeria_prop }
      else
        format.html { render :new }
        format.json { render json: @galeria_prop.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /galeria_props/1
  # PATCH/PUT /galeria_props/1.json
  def update
    @empresa = Empresa.find(params[:empresa_id])   
    @producto = @empresa.productos.find(params[:producto_id])
    @prop_general = @producto.prop_generals.find(params[:prop_general_id])
    @galeria_prop = @prop_general.galeria_props.find(params[:id]) 
    respond_to do |format|
      if @galeria_prop.update(galeria_prop_params)
        format.html { redirect_to empresa_producto_prop_general_galeria_props_path, notice: 'Galeria prop was successfully updated.' }
        format.json { render :show, status: :ok, location: @galeria_prop }
      else
        format.html { render :edit }
        format.json { render json: @galeria_prop.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /galeria_props/1
  # DELETE /galeria_props/1.json
  def destroy
    @empresa = Empresa.find(params[:empresa_id])   
    @producto = @empresa.productos.find(params[:producto_id])
    @prop_general = @producto.prop_generals.find(params[:prop_general_id])
    @galeria_prop = @prop_general.galeria_props.find(params[:id])     
    @galeria_prop.destroy
    respond_to do |format|
      format.html { redirect_to empresa_producto_prop_general_galeria_props_path, notice: 'Galeria prop was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.


    # Never trust parameters from the scary internet, only allow the white list through.
    def galeria_prop_params
    
      params.require(:galeria_prop).permit(:image)
    end
end
