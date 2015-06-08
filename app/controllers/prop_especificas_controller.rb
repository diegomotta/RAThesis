class PropEspecificasController < ApplicationController
  
  # GET /prop_especificas
  # GET /prop_especificas.json
  def index

    @empresa = Empresa.find(params[:empresa_id])   
    @producto = @empresa.productos.find(params[:producto_id])
    @item_producto = @producto.item_productos.find(params[:item_producto_id])
    @detalle = @item_producto.detalles.find(params[:detalle_id])
    @prop_especificas = @detalle.prop_especificas
  end

  # GET /prop_especificas/1
  # GET /prop_especificas/1.json
  def show
    @empresa = Empresa.find(params[:empresa_id])   
    @producto = @empresa.productos.find(params[:producto_id])
    @item_producto = @producto.item_productos.find(params[:item_producto_id])
    @detalle = @item_producto.detalles.find(params[:detalle_id])
    @prop_especifica = @detalle.prop_especificas.find(params[:id])
  end

  # GET /prop_especificas/new
  def new
    @empresa = Empresa.find(params[:empresa_id])   
    @producto = @empresa.productos.find(params[:producto_id])
    @item_producto = @producto.item_productos.find(params[:item_producto_id])
    @detalle = @item_producto.detalles.find(params[:detalle_id])
    @prop_especifica= @detalle.prop_especificas.new
  end

  # GET /prop_especificas/1/edit
  def edit
    @empresa = Empresa.find(params[:empresa_id])   
    @producto = @empresa.productos.find(params[:producto_id])
    @item_producto = @producto.item_productos.find(params[:item_producto_id])
    @detalle = @item_producto.detalles.find(params[:detalle_id])
    @prop_especifica = @detalle.prop_especificas.find(params[:id])
  end

  # POST /prop_especificas
  # POST /prop_especificas.json
  def create
    @empresa = Empresa.find(params[:empresa_id])   
    @producto = @empresa.productos.find(params[:producto_id])
    @item_producto = @producto.item_productos.find(params[:item_producto_id])
    @detalle = @item_producto.detalles.find(params[:detalle_id])
    @prop_especifica = @detalle.prop_especificas.build(prop_especifica_params)
    respond_to do |format|
      if @prop_especifica.save
        format.html { redirect_to empresa_producto_item_producto_detalle_prop_especifica_path(@empresa,@producto,@item_producto,@detalle,@prop_especifica), notice: 'Item producto was successfully created.' }
        format.json { render :show, status: :created, location: @prop_especifica }
      else
        format.html { render :new }
        format.json { render json: @prop_especifica.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prop_especificas/1
  # PATCH/PUT /prop_especificas/1.json
  def update
        @empresa = Empresa.find(params[:empresa_id])   
    @producto = @empresa.productos.find(params[:producto_id])
    @item_producto = @producto.item_productos.find(params[:item_producto_id])
    @detalle = @item_producto.detalles.find(params[:detalle_id])
    @prop_especifica = @detalle.prop_especificas.find(params[:id]) 
    respond_to do |format|
      if @prop_especifica.update(prop_especifica_params)
        format.html { redirect_to empresa_producto_item_producto_detalle_prop_especifica_path(@empresa,@producto,@item_producto,@detalle,@prop_especifica), notice: 'Item producto was successfully updated.' }
        format.json { render :show, status: :ok, location: @prop_especifica }
      else
        format.html { render :edit }
        format.json { render json: @prop_especifica.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prop_especificas/1
  # DELETE /prop_especificas/1.json
  def destroy
    @empresa = Empresa.find(params[:empresa_id])   
    @producto = @empresa.productos.find(params[:producto_id])
    @item_producto = @producto.item_productos.find(params[:item_producto_id])
    @detalle = @item_producto.detalles.find(params[:detalle_id])
    @prop_especifica = @detalle.prop_especificas.find(params[:id])
    @prop_especifica.destroy
    respond_to do |format|
      format.html { redirect_to empresa_producto_item_producto_detalle_prop_especificas_path, notice: 'Prop especifica was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.


    # Never trust parameters from the scary internet, only allow the white list through.
    def prop_especifica_params
      params.require(:prop_especifica).permit(:item, :descripción)
    end
end
