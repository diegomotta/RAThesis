class ItemProductosController < ApplicationController
 

  # GET /item_productos
  # GET /item_productos.json
  def index
    @empresa = Empresa.find(params[:empresa_id])   
    @producto = @empresa.productos.find(params[:producto_id])
    @item_productos = @producto.item_productos

  end


  # GET /item_productos/1
  # GET /item_productos/1.json
  def show
    @empresa = Empresa.find(params[:empresa_id])   
    @producto = @empresa.productos.find(params[:producto_id])
    @item_producto = @producto.item_productos.find(params[:id])
    respond_to do |format|
      format.html {
        val = url_for([@empresa,@producto,@item_producto])
        valor = val.gsub('http://0.0.0.0:3000', '')
        qrcode = RQRCode::QRCode.new(valor, :size => 3, :level => :l)
        png = qrcode.to_img                                      
        send_data png.resize(200, 200), :type => 'image/png', :disposition => 'attachment'
      }
      format.json{render :json => @item_producto.to_json(:only => [:id, :marca, :tipo],:methods => [:image_url],
      :include =>{ :detalles => { :only => [:id,:descripción, :elaboración, :presentación, :packaging ,:origen, :secanza, :característica], 
      :include=>{ :prop_especificas=> {:only=>[:id,:item, :descripción]}}},
                  :galeria_imagenes => { :only => [:id,:titulo,:descripcion ] ,:methods => [:image_url]},
                  :videos_productos => { :only => [:id,:titulo,:descripcion, :url]},
                  :opinions => { :only => [:id,:nombre, :nacionalidad, :pais, :ciudad, :comentario]}})} 

    end
  end

  # GET /item_productos/new
  def new
    @empresa = Empresa.find(params[:empresa_id])   
    @producto = @empresa.productos.find(params[:producto_id])
    @item_producto = @producto.item_productos.new
  end

  # GET /item_productos/1/edit
  def edit
    @empresa = Empresa.find(params[:empresa_id])   
    @producto = @empresa.productos.find(params[:producto_id])
    @item_producto = @producto.item_productos.find(params[:id])
  end

  # POST /item_productos
  # POST /item_productos.json
  def create
    @empresa = Empresa.find(params[:empresa_id])   
    @producto = @empresa.productos.find(params[:producto_id])
    @item_producto = @producto.item_productos.create(item_producto_params)
    respond_to do |format|
      if @item_producto.save
        format.html { redirect_to empresa_producto_item_productos_path, notice: 'Item producto was successfully created.' }
        format.json { render :show, status: :created, location: @item_producto }
      else
        format.html { render :new }
        format.json { render json: @item_producto.errors, status: :unprocessable_entity }
      end
    end
  end


  # PATCH/PUT /item_productos/1
  # PATCH/PUT /item_productos/1.json
  def update
    @empresa = Empresa.find(params[:empresa_id])   
    @producto = @empresa.productos.find(params[:producto_id])
    @item_producto = @producto.item_productos.find(params[:id])
    respond_to do |format|
      if @item_producto.update(item_producto_params)
        format.html { redirect_to empresa_producto_item_productos_path, notice: 'Item producto was successfully updated.' }
        format.json { render :show, status: :ok, location: @item_producto }
      else
        format.html { render :edit }
        format.json { render json: @item_producto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /item_productos/1
  # DELETE /item_productos/1.json
  def destroy
    @empresa = Empresa.find(params[:empresa_id])   
    @producto = @empresa.productos.find(params[:producto_id])
    @item_producto = @producto.item_productos.find(params[:id])
    @item_producto.destroy
    respond_to do |format|
      format.html { redirect_to empresa_producto_item_productos_path, notice: 'Item producto was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.


    # Never trust parameters from the scary internet, only allow the white list through.
    def item_producto_params
      params.require(:item_producto).permit(:marca, :tipo, :image)
    end
end
