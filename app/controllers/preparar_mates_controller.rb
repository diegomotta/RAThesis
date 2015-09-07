class PrepararMatesController < ApplicationController


  # GET /preparar_mates
  # GET /preparar_mates.json
  def index
    
    @empresa = Empresa.find(params[:empresa_id])   
    @producto = @empresa.productos.find(params[:producto_id])
    @preparar_mates = @producto.preparar_mates

  end

  # GET /preparar_mates/1
  # GET /preparar_mates/1.json
  def show
      @empresa = Empresa.find(params[:empresa_id])   
    @producto = @empresa.productos.find(params[:producto_id])
    @preparar_mate = @producto.preparar_mates.find(params[:id])
  end

  # GET /preparar_mates/new
  def new
    @empresa = Empresa.find(params[:empresa_id])   
    @producto = @empresa.productos.find(params[:producto_id])
    @preparar_mate = @producto.preparar_mates.new
  end

  # GET /preparar_mates/1/edit
  def edit
          @empresa = Empresa.find(params[:empresa_id])   
    @producto = @empresa.productos.find(params[:producto_id])
    @preparar_mate = @producto.preparar_mates.find(params[:id])
  end

  # POST /preparar_mates
  # POST /preparar_mates.json
  def create
    
    @empresa = Empresa.find(params[:empresa_id])   
    @producto = @empresa.productos.find(params[:producto_id])
    @preparar_mate = @producto.preparar_mates.build(preparar_mate_params)
    respond_to do |format|
      if @preparar_mate.save
        format.html { redirect_to empresa_producto_preparar_mates_path, notice: 'Preparar mate was successfully created.' }
        format.json { render :show, status: :created, location: @preparar_mate }
      else
        format.html { render :new }
        format.json { render json: @preparar_mate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /preparar_mates/1
  # PATCH/PUT /preparar_mates/1.json
  def update
    @empresa = Empresa.find(params[:empresa_id])   
    @producto = @empresa.productos.find(params[:producto_id])
    @preparar_mate = @producto.preparar_mates.find(params[:id])
    respond_to do |format|
      if @preparar_mate.update(preparar_mate_params)
        format.html { redirect_to empresa_producto_preparar_mates_path, notice: 'Preparar mate was successfully updated.' }
        format.json { render :show, status: :ok, location: @preparar_mate }
      else
        format.html { render :edit }
        format.json { render json: @preparar_mate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /preparar_mates/1
  # DELETE /preparar_mates/1.json
  def destroy
        @empresa = Empresa.find(params[:empresa_id])   
    @producto = @empresa.productos.find(params[:producto_id])
    @preparar_mate = @producto.preparar_mates.find(params[:id])
    @preparar_mate.destroy
    respond_to do |format|
      format.html { redirect_to empresa_producto_preparar_mates_path, notice: 'Preparar mate was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    # Never trust parameters from the scary internet, only allow the white list through.
    def preparar_mate_params
      params.require(:preparar_mate).permit(:título, :descrición)
    end
end
