class PropGeneralsController < ApplicationController


  # GET /prop_generals
  # GET /prop_generals.json
  def index

    @empresa = Empresa.find(params[:empresa_id])   
    @producto = @empresa.productos.find(params[:producto_id])
    @prop_generals = @producto.prop_generals
  end

  # GET /prop_generals/1
  # GET /prop_generals/1.json
  def show
    @empresa = Empresa.find(params[:empresa_id])   
    @producto = @empresa.productos.find(params[:producto_id])
    @prop_general = @producto.prop_generals.find(params[:id])
  end

  # GET /prop_generals/new
  def new
    @empresa = Empresa.find(params[:empresa_id])   
    @producto = @empresa.productos.find(params[:producto_id])
    @prop_general = @producto.prop_generals.new
  end

  # GET /prop_generals/1/edit
  def edit
    @empresa = Empresa.find(params[:empresa_id])   
    @producto = @empresa.productos.find(params[:producto_id])
    @prop_general = @producto.prop_generals.find(params[:id])
  end

  # POST /prop_generals
  # POST /prop_generals.json
  def create
    @empresa = Empresa.find(params[:empresa_id])   
    @producto = @empresa.productos.find(params[:producto_id])
    @prop_general = @producto.prop_generals.new(prop_general_params)
    respond_to do |format|
      if @prop_general.save
        format.html { redirect_to empresa_producto_prop_general_path(@empresa,@producto,@prop_general), notice: 'Prop general was successfully created.' }
        format.json { render :show, status: :created, location: @prop_general }
      else
        format.html { render :new }
        format.json { render json: @prop_general.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prop_generals/1
  # PATCH/PUT /prop_generals/1.json
  def update
    @empresa = Empresa.find(params[:empresa_id])   
    @producto = @empresa.productos.find(params[:producto_id])
    @prop_general = @producto.prop_generals.find(params[:id])
    respond_to do |format|
      if @prop_general.update(prop_general_params)
        format.html { redirect_to empresa_producto_prop_general_path(@empresa,@producto,@prop_general), notice: 'Prop general was successfully updated.' }
        format.json { render :show, status: :ok, location: @prop_general }
      else
        format.html { render :edit }
        format.json { render json: @prop_general.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prop_generals/1
  # DELETE /prop_generals/1.json
  def destroy
    @empresa = Empresa.find(params[:empresa_id])   
    @producto = @empresa.productos.find(params[:producto_id])
    @prop_general = @producto.prop_generals.find(params[:id])
    @prop_general.destroy
    respond_to do |format|
      format.html { redirect_to empresa_producto_prop_generals_path(@empresa,@producto,@prop_general), notice: 'Prop general was successfully updated.' }
      format.json { head :no_content }
    end
  end

  private


    # Never trust parameters from the scary internet, only allow the white list through.
    def prop_general_params
      params.require(:prop_general).permit(:descripción)
    end
end
