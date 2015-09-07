class VideosProductosController < ApplicationController


  # GET /videos_productos
  # GET /videos_productos.json
  def index
    @empresa = Empresa.find(params[:empresa_id])   
    @producto = @empresa.productos.find(params[:producto_id])
    @item_producto = @producto.item_productos.find(params[:item_producto_id])
    @videos_productos = @item_producto.videos_productos
  end

  # GET /videos_productos/1
  # GET /videos_productos/1.json
  def show
    @empresa = Empresa.find(params[:empresa_id])   
    @producto = @empresa.productos.find(params[:producto_id])
    @item_producto = @producto.item_productos.find(params[:item_producto_id])
    @videos_producto= @item_producto.videos_productos.find(params[:id])
  end

  # GET /videos_productos/new
  def new
    @empresa = Empresa.find(params[:empresa_id])   
    @producto = @empresa.productos.find(params[:producto_id])
    @item_producto = @producto.item_productos.find(params[:item_producto_id])
    @videos_producto= @item_producto.videos_productos.new    
  end

  # GET /videos_productos/1/edit
  def edit
    @empresa = Empresa.find(params[:empresa_id])   
    @producto = @empresa.productos.find(params[:producto_id])
    @item_producto = @producto.item_productos.find(params[:item_producto_id])
    @videos_producto = @item_producto.videos_productos.find(params[:id])  
  end

  # POST /videos_productos
  # POST /videos_productos.json
  def create
    @empresa = Empresa.find(params[:empresa_id])   
    @producto = @empresa.productos.find(params[:producto_id])
    @item_producto = @producto.item_productos.find(params[:item_producto_id])
    @videos_producto = @item_producto.videos_productos.create(videos_productosparams)
    respond_to do |format|
      if @videos_producto.save
        format.html { redirect_to empresa_producto_item_producto_videos_productos_path(@empresa,@producto,@item_producto,@videos_producto), notice: 'Videos producto was successfully created.' }
        format.json { render :show, status: :created, location: @videos_producto }
      else
        format.html { render :new }
        format.json { render json: @videos_producto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /videos_productos/1
  # PATCH/PUT /videos_productos/1.json
  def update
    @empresa = Empresa.find(params[:empresa_id])   
    @producto = @empresa.productos.find(params[:producto_id])
    @item_producto = @producto.item_productos.find(params[:item_producto_id])
    @videos_producto = @item_producto.videos_productos.find(params[:id])    
    respond_to do |format|
      if @videos_producto.update(videos_productosparams)
        format.html { redirect_to empresa_producto_item_producto_videos_productos_path(@empresa,@producto,@item_producto,@videos_producto), notice: 'Videos producto was successfully updated.' }
        format.json { render :show, status: :ok, location: @videos_producto }
      else
        format.html { render :edit }
        format.json { render json: @videos_producto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /videos_productos/1
  # DELETE /videos_productos/1.json
  def destroy
    @empresa = Empresa.find(params[:empresa_id])   
    @producto = @empresa.productos.find(params[:producto_id])
    @item_producto = @producto.item_productos.find(params[:item_producto_id])
    @videos_producto = @item_producto.videos_productos.find(params[:id])   
    @videos_producto.destroy
    respond_to do |format|
      format.html { redirect_to empresa_producto_item_producto_videos_productos_path, notice: 'Videos producto was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    
    # Never trust parameters from the scary internet, only allow the white list through.
    def videos_productosparams
      params.require(:videos_producto).permit(:titulo, :descripcion, :url)
    end
end
