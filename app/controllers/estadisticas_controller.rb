class EstadisticasController < ApplicationController

  # GET /estadisticas
  # GET /estadisticas.json
  def index
      @empresa = Empresa.find(params[:empresa_id])
      @estadisticas = @empresa.estadisticas
  end

  # GET /estadisticas/1
  # GET /estadisticas/1.json
  def show
    @empresa = Empresa.find(params[:empresa_id])
    @estadistica = @empresa.estadisticas.find(params[:id])
  end

  # GET /estadisticas/new
  def new
    @empresa = Empresa.find(params[:empresa_id])
    @estadistica = @empresa.estadisticas.new(params[:estadistica])
  end

  # GET /estadisticas/1/edit
  def edit
     @empresa = Empresa.find(params[:empresa_id])
     @estadistica = @empresa.estadisticas.find(params[:id])        
  end

  # POST /estadisticas
  # POST /estadisticas.json
  def create
  @empresa = Empresa.find(params[:empresa_id])
  @estadistica =@empresa.estadisticas.build(estadistica_params)
    respond_to do |format|
      if @estadistica.save
        format.html { redirect_to empresa_estadisticas_path, notice: 'Estadistica was successfully created.' }
        format.json { render :show, status: :created, location: @estadistica }
      else
        format.html { render :new }
        format.json { render json: @estadistica.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /estadisticas/1
  # PATCH/PUT /estadisticas/1.json
  def update
    @empresa = Empresa.find(params[:empresa_id])
    @estadistica = @empresa.estadisticas.find(params[:id])       
    respond_to do |format|
      if @estadistica.update(estadistica_params)
        format.html { redirect_to empresa_estadisticas_path, notice: 'Estadistica was successfully updated.' }
        format.json { render :show, status: :ok, location: @estadistica }
      else
        format.html { render :edit }
        format.json { render json: @estadistica.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /estadisticas/1
  # DELETE /estadisticas/1.json
  def destroy
    @empresa = Empresa.find(params[:empresa_id])
    @estadistica = @empresa.estadisticas.find(params[:id])   
    @estadistica.destroy
    respond_to do |format|
      format.html { redirect_to empresa_estadisticas_path, notice: 'Estadistica was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    # Never trust parameters from the scary internet, only allow the white list through.
    def estadistica_params
      params.require(:estadistica).permit(:califproducto, :precio, :imagenempresareg, :enteroprod, :sabortoman,:cuantoconsumo,:cuantoconsumo,:justifprod,:yerbamedicinal,:otroproducto)
    end
end    