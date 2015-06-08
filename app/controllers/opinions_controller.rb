class OpinionsController < ApplicationController


  # GET /opinions
  # GET /opinions.json
  def index
    @empresa = Empresa.find(params[:empresa_id])   
    @producto = @empresa.productos.find(params[:producto_id])
    @item_producto = @producto.item_productos.find(params[:item_producto_id])
    @opinions = @item_producto.opinions
  end

  # GET /opinions/1
  # GET /opinions/1.json
  def show
    @empresa = Empresa.find(params[:empresa_id])   
    @producto = @empresa.productos.find(params[:producto_id])
    @item_producto = @producto.item_productos.find(params[:item_producto_id])
    @opinion = @item_producto.opinions.find(params[:id])
  end

  # GET /opinions/new
  def new
    @empresa = Empresa.find(params[:empresa_id])   
    @producto = @empresa.productos.find(params[:producto_id])
    @item_producto = @producto.item_productos.find(params[:item_producto_id])
    @opinion = @item_producto.opinions.new
  end

  # GET /opinions/1/edit
  def edit
    @empresa = Empresa.find(params[:empresa_id])   
    @producto = @empresa.productos.find(params[:producto_id])
    @item_producto = @producto.item_productos.find(params[:item_producto_id])
    @opinion = @item_productos.opinions.find(params[:id])    
  end

  # POST /opinions
  # POST /opinions.json
  def create
    @empresa = Empresa.find(params[:empresa_id])   
    @producto = @empresa.productos.find(params[:producto_id])
    @item_producto = @producto.item_productos.find(params[:item_producto_id])
    @opinion = @item_producto.opinions.build(opinion_params)
    respond_to do |format|
      if @opinion.save
        format.html { redirect_to empresa_producto_item_producto_opinion_path(@empresa,@producto,@item_producto,@opinion), notice: 'Item producto was successfully created.' }
        format.json { render :show, status: :created, location: @opinion }
      else
        format.html { render :new }
        format.json { render json: @opinion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /opinions/1
  # PATCH/PUT /opinions/1.json
  def update
    @empresa = Empresa.find(params[:empresa_id])   
    @producto = @empresa.productos.find(params[:producto_id])
    @item_producto = @producto.item_productos.find(params[:item_producto_id])
    @opinion = @item_producto.opinions.find(params[:id])
    respond_to do |format|
      if @opinion.update(opinion_params)
        format.html { redirect_to empresa_producto_item_producto_opinion_path(@empresa,@producto,@item_producto,@opinion), notice: 'Item producto was successfully updated.' }
        format.json { render :show, status: :ok, location: @opinion }
      else
        format.html { render :edit }
        format.json { render json: @opinion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /opinions/1
  # DELETE /opinions/1.json
  def destroy
    @empresa = Empresa.find(params[:empresa_id])   
    @producto = @empresa.productos.find(params[:producto_id])
    @item_producto = @producto.item_productos.find(params[:item_producto_id])
    @opinion = @item_producto.opinions.find(params[:id])
    @opinion.destroy
    respond_to do |format|
      format.html { redirect_to empresa_producto_item_producto_opinions_path, notice: 'Opinion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.


    # Never trust parameters from the scary internet, only allow the white list through.
    def opinion_params
      params.require(:opinion).permit(:nombre, :nacionalidad, :pais, :ciudad, :comentario)
    end
end
