class GaleriaPrepMatesController < ApplicationController


  # GET /galeria_prep_mates
  # GET /galeria_prep_mates.json
  def index
    @empresa = Empresa.find(params[:empresa_id])   
    @producto = @empresa.productos.find(params[:producto_id])
    @galeria_prep_mates = @producto.galeria_prep_mates
   end

  # GET /galeria_prep_mates/1
  # GET /galeria_prep_mates/1.json
  def show
    @empresa = Empresa.find(params[:empresa_id])   
    @producto = @empresa.productos.find(params[:producto_id])
    @galeria_prep_mate = @producto.galeria_prep_mates.find(params[:id])
  end

  # GET /galeria_prep_mates/new
  def new
    @empresa = Empresa.find(params[:empresa_id])   
    @producto = @empresa.productos.find(params[:producto_id])
    @galeria_prep_mate = @producto.galeria_prep_mates.new
  end

  # GET /galeria_prep_mates/1/edit
  def edit
    @empresa = Empresa.find(params[:empresa_id])   
    @producto = @empresa.productos.find(params[:producto_id])
    @galeria_prep_mate = @producto.galeria_prep_mates.find(params[:id])
  end

  # POST /galeria_prep_mates
  # POST /galeria_prep_mates.json
  def create
    @empresa = Empresa.find(params[:empresa_id])   
    @producto = @empresa.productos.find(params[:producto_id])
    @galeria_prep_mate = @producto.galeria_prep_mates.new(galeria_prep_mate_params)

    respond_to do |format|
      if @galeria_prep_mate.save
        format.html { redirect_to empresa_producto_galeria_prep_mates_path, notice: 'Galeria prep mate was successfully created.' }
        format.json { render :show, status: :created, location: @galeria_prep_mate }
      else
        format.html { render :new }
        format.json { render json: @galeria_prep_mate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /galeria_prep_mates/1
  # PATCH/PUT /galeria_prep_mates/1.json
  def update
    @empresa = Empresa.find(params[:empresa_id])   
    @producto = @empresa.productos.find(params[:producto_id])
    @galeria_prep_mate = @producto.galeria_prep_mates.find(params[:id])
    respond_to do |format|
      if @galeria_prep_mate.update(galeria_prep_mate_params)
        format.html { redirect_to empresa_producto_galeria_prep_mates_path, notice: 'Galeria prep mate was successfully updated.' }
        format.json { render :show, status: :ok, location: @galeria_prep_mate }
      else
        format.html { render :edit }
        format.json { render json: @galeria_prep_mate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /galeria_prep_mates/1
  # DELETE /galeria_prep_mates/1.json
  def destroy
    @empresa = Empresa.find(params[:empresa_id])   
    @producto = @empresa.productos.find(params[:producto_id])
    @galeria_prep_mate = @producto.galeria_prep_mates.find(params[:id])
    @galeria_prep_mate.destroy
    respond_to do |format|
      format.html { redirect_to empresa_producto_galeria_prep_mates_path, notice: 'Galeria prep mate was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    # Never trust parameters from the scary internet, only allow the white list through.
    def galeria_prep_mate_params
      params.require(:galeria_prep_mate).permit(:título, :descrición, :image)
    end
end
