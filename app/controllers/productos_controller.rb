class ProductosController < ApplicationController
  before_action :set_producto, only: [:show, :edit, :update, :destroy]

  # GET /productos
  # GET /productos.json
  def index
    @empresa = Empresa.find(params[:empresa_id])
    @productos = @empresa.productos
  end

  # GET /productos/1
  # GET /productos/1.json
  def show
    @empresa = Empresa.find(params[:empresa_id])
    @producto = @empresa.productos.find(params[:id])
  end

  # GET /productos/new
  def new
       @empresa = Empresa.find(params[:empresa_id])
       @producto = @empresa.productos.new
  end

  # GET /productos/1/edit
  def edit
    @empresa = Empresa.find(params[:empresa_id])
    @producto = @empresa.productos.find(params[:id])
  end

  # POST /productos
  # POST /productos.json
  def create
    @empresa = Empresa.find(params[:empresa_id])
    @producto = @empresa.productos.new(producto_params)
    respond_to do |format|
      if @producto.save
        format.html { redirect_to empresa_producto_path(@empresa,@producto), notice: 'Producto was successfully created.' }
        format.json { render :show, status: :created, location: @producto }
      else
        format.html { render :new }
        format.json { render json: @producto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /productos/1
  # PATCH/PUT /productos/1.json
  def update
    @empresa = Empresa.find(params[:empresa_id])
    @producto = @empresa.productos.find(params[:id])
    respond_to do |format|
      if @producto.update(producto_params)
        format.html { redirect_to empresa_producto_path(@empresa,@producto), notice: 'Producto was successfully updated.' }
        format.json { render :show, status: :ok, location: @producto }
      else
        format.html { render :edit }
        format.json { render json: @producto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /productos/1
  # DELETE /productos/1.json
  def destroy
    @empresa = Empresa.find(params[:empresa_id])
    @producto = @empresa.productos.find(params[:id])
    @producto.destroy
    respond_to do |format|
      format.html { redirect_to empresa_productos_path(@empresa,@producto), notice: 'Producto was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_producto
       @empresa = Empresa.find(params[:empresa_id])
       @producto = @empresa.productos.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def producto_params
      params.require(:producto).permit(:titulo, :empresa_id)
    end
end
