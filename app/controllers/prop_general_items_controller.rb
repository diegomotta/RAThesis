class PropGeneralItemsController < ApplicationController
  

  # GET /prop_general_items
  # GET /prop_general_items.json
  def index
    @empresa = Empresa.find(params[:empresa_id])
    @producto = @empresa.productos.find(params[:producto_id])
    @prop_general = @producto.prop_generals.find(params[:prop_general_id])
    @prop_general_items = @prop_general.prop_general_items
  end

  # GET /prop_general_items/1
  # GET /prop_general_items/1.json
  def show
    @empresa = Empresa.find(params[:empresa_id])
    @producto = @empresa.productos.find(params[:producto_id])
    @prop_general = @producto.prop_generals.find(params[:prop_general_id])
    @prop_general_item = @prop_general.prop_general_items.find(params[:id])
  end

  # GET /prop_general_items/new
  def new
    @empresa = Empresa.find(params[:empresa_id])
    @producto = @empresa.productos.find(params[:producto_id])
    @prop_general = @producto.prop_generals.find(params[:prop_general_id])
    @prop_general_item = @prop_general.prop_general_items.new
  end

  # GET /prop_general_items/1/edit
  def edit
    @empresa = Empresa.find(params[:empresa_id])
    @producto = @empresa.productos.find(params[:producto_id])
    @prop_general = @producto.prop_generals.find(params[:prop_general_id])
    @prop_general_item = @prop_general.prop_general_items.find(params[:id])
  end

  # POST /prop_general_items
  # POST /prop_general_items.json
  def create
    
    @empresa = Empresa.find(params[:empresa_id])
    @producto = @empresa.productos.find(params[:producto_id])
    @prop_general = @producto.prop_generals.find(params[:prop_general_id])
    @prop_general_item = @prop_general.prop_general_items.build(prop_general_item_params)
    respond_to do |format|
      if @prop_general_item.save
        format.html { redirect_to empresa_producto_prop_general_prop_general_item_path(@empresa,@producto,@prop_general,@prop_general_item), notice: 'Prop general item was successfully created.' }
        format.json { render :show, status: :created, location: @prop_general_item }
      else
        format.html { render :new }
        format.json { render json: @prop_general_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prop_general_items/1
  # PATCH/PUT /prop_general_items/1.json
  def update
    @empresa = Empresa.find(params[:empresa_id])
    @producto = @empresa.productos.find(params[:producto_id])
    @prop_general = @producto.prop_generals.find(params[:prop_general_id])
    @prop_general_item = @prop_general.prop_general_items.find(params[:id])
    respond_to do |format|
      if @prop_general_item.update(prop_general_item_params)
        format.html { redirect_to empresa_producto_prop_general_prop_general_item_path(@empresa,@producto,@prop_general,@prop_general_item), notice: 'Prop general item was successfully updated.' }
        format.json { render :show, status: :ok, location: @prop_general_item }
      else
        format.html { render :edit }
        format.json { render json: @prop_general_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prop_general_items/1
  # DELETE /prop_general_items/1.json
  def destroy
    @empresa = Empresa.find(params[:empresa_id])
    @producto = @empresa.productos.find(params[:producto_id])
    @prop_general = @producto.prop_generals.find(params[:prop_general_id])
    @prop_general_item = @prop_general.prop_general_items.find(params[:id])
    @prop_general_item.destroy
    respond_to do |format|
      format.html { redirect_to empresa_producto_prop_general_prop_general_items_path(@empresa,@producto,@prop_general,@prop_general_item), notice: 'Prop general item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.


    # Never trust parameters from the scary internet, only allow the white list through.
    def prop_general_item_params
      params.require(:prop_general_item).permit(:item, :descripción)
    end
end
