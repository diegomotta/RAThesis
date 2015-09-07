class DetallesController < ApplicationController

  # GET /detalles
  # GET /detalles.json
  def index
    @empresa = Empresa.find(params[:empresa_id])   
    @producto = @empresa.productos.find(params[:producto_id])
    @item_producto = @producto.item_productos.find(params[:item_producto_id])
    @detalles = @item_producto.detalles
  end

  # GET /detalles/1
  # GET /detalles/1.json
  def show
    @empresa = Empresa.find(params[:empresa_id])   
    @producto = @empresa.productos.find(params[:producto_id])
    @item_producto = @producto.item_productos.find(params[:item_producto_id])
    @detalle = @item_producto.detalles.find(params[:id])
  end

  # GET /detalles/new
  def new
    @empresa = Empresa.find(params[:empresa_id])   
    @producto = @empresa.productos.find(params[:producto_id])
    @item_producto = @producto.item_productos.find(params[:item_producto_id])
    @detalle = @item_producto.detalles.new
  end

  # GET /detalles/1/edit
  def edit
     @empresa = Empresa.find(params[:empresa_id])   
    @producto = @empresa.productos.find(params[:producto_id])
    @item_producto = @producto.item_productos.find(params[:item_producto_id])
    @detalle = @item_producto.detalles.find(params[:id])       
  end

  # POST /detalles
  # POST /detalles.json
  def create
    @empresa = Empresa.find(params[:empresa_id])   
    @producto = @empresa.productos.find(params[:producto_id])
    @item_producto = @producto.item_productos.find(params[:item_producto_id])
    @detalle = @item_producto.detalles.build(detalle_params)
    respond_to do |format|
      if @detalle.save
        format.html { redirect_to empresa_producto_item_producto_detalles_path, notice: 'Item producto was successfully created.' }
        format.json { render :show, status: :created, location: @detalle }
      else
        format.html { render :new }
        format.json { render json: @detalle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /detalles/1
  # PATCH/PUT /detalles/1.json
  def update
    @empresa = Empresa.find(params[:empresa_id])   
    @producto = @empresa.productos.find(params[:producto_id])
    @item_producto = @producto.item_productos.find(params[:item_producto_id])
    @detalle = @item_producto.detalles.find(params[:id])   
    respond_to do |format|
      if @detalle.update(detalle_params)
        format.html { redirect_to empresa_producto_item_producto_detalles_path, notice: 'Item producto was successfully updated.' }
        format.json { render :show, status: :ok, location: @opinion }
      else
        format.html { render :edit }
        format.json { render json: @detalle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /detalles/1
  # DELETE /detalles/1.json
  def destroy
    @empresa = Empresa.find(params[:empresa_id])   
    @producto = @empresa.productos.find(params[:producto_id])
    @item_producto = @producto.item_productos.find(params[:item_producto_id])
    @detalle = @item_producto.detalles.find(params[:id])
    @detalle.destroy
    respond_to do |format|
      format.html { redirect_to empresa_producto_item_producto_detalles_path, notice: 'Opinion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    # Never trust parameters from the scary internet, only allow the white list through.
    def detalle_params
      params.require(:detalle).permit(:descripción, :elaboración, :presentación, :packaging ,:origen, :secanza, :característica)
    end
end
