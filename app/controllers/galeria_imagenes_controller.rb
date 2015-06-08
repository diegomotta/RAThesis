class GaleriaImagenesController < ApplicationController
  # GET /galeria_imagenes
  # GET /galeria_imagenes.json
  def index
    @empresa = Empresa.find(params[:empresa_id])   
    @producto = @empresa.productos.find(params[:producto_id])
    @item_producto = @producto.item_productos.find(params[:item_producto_id])
    @galeria_imagenes = @item_producto.galeria_imagenes
    ##respond_to do |format|
    ##  format.html # show.html.erb
    ##  format.json { render :json => @galeria_imagenes }
    ##end
  end

  # GET /galeria_imagenes/1
  # GET /galeria_imagenes/1.json
  def show
    @empresa = Empresa.find(params[:empresa_id])   
    @producto = @empresa.productos.find(params[:producto_id])
    @item_producto = @producto.item_productos.find(params[:item_producto_id])
    @galeria_imagene = @item_producto.galeria_imagenes.find(params[:id])
  end

  # GET /galeria_imagenes/new
  def new
    @empresa = Empresa.find(params[:empresa_id])   
    @producto = @empresa.productos.find(params[:producto_id])
    @item_producto = @producto.item_productos.find(params[:item_producto_id])
    @galeria_imagene = @item_producto.galeria_imagenes.new
  end

  # GET /galeria_imagenes/1/edit
  def edit
    @empresa = Empresa.find(params[:empresa_id])   
    @producto = @empresa.productos.find(params[:producto_id])
    @item_producto = @producto.item_productos.find(params[:item_producto_id])
    @galeria_imagene = @item_producto.galeria_imagenes.find(params[:id])    
  end

  # POST /galeria_imagenes
  # POST /galeria_imagenes.json
  def create
    @empresa = Empresa.find(params[:empresa_id])   
    @producto = @empresa.productos.find(params[:producto_id])
    @item_producto = @producto.item_productos.find(params[:item_producto_id])
    @galeria_imagene = @item_producto.galeria_imagenes.create(galeria_imagene_params)
    respond_to do |format|
      if @galeria_imagene.save
        format.html { redirect_to empresa_producto_item_producto_galeria_imagene_path(@empresa,@producto,@item_producto,@galeria_imagene), notice: 'Item producto was successfully created.' }
        format.json { render :show, status: :created, location: @galeria_imagene }
      else
        format.html { render :new }
        format.json { render json: @galeria_imagene.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /galeria_imagenes/1
  # PATCH/PUT /galeria_imagenes/1.json
  def update
    @empresa = Empresa.find(params[:empresa_id])   
    @producto = @empresa.productos.find(params[:producto_id])
    @item_producto = @producto.item_productos.find(params[:item_producto_id])
    @galeria_imagene = @item_producto.galeria_imagenes.find(params[:id])
    respond_to do |format|
      if @galeria_imagene.update(galeria_imagene_params)
        format.html { redirect_to empresa_producto_item_producto_galeria_imagene_path(@empresa,@producto,@item_producto,@galeria_imagene), notice: 'Item producto was successfully updated.' }
        format.json { render :show, status: :ok, location: @galeria_imagene }
      else
        format.html { render :edit }
        format.json { render json: @galeria_imagene.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /galeria_imagenes/1
  # DELETE /galeria_imagenes/1.json
  def destroy
    @empresa = Empresa.find(params[:empresa_id])   
    @producto = @empresa.productos.find(params[:producto_id])
    @item_producto = @producto.item_productos.find(params[:item_producto_id])
    @galeria_imagene = @item_producto.galeria_imagenes.find(params[:id])
    @galeria_imagene.destroy
    respond_to do |format|
      format.html { redirect_to empresa_producto_item_producto_galeria_imagenes_path, notice: 'Item producto was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.


    # Never trust parameters from the scary internet, only allow the white list through.
    def galeria_imagene_params
      params.require(:galeria_imagene).permit(:titulo, :descripcion, :image)
    end
end
