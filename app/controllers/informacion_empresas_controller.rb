class InformacionEmpresasController < ApplicationController
 

  # GET /informacion_empresas
  # GET /informacion_empresas.json
  def index
    @empresa = Empresa.find(params[:empresa_id])
    @informacion_empresas = @empresa.informacion_empresas
  end

  # GET /informacion_empresas/1
  # GET /informacion_empresas/1.json
  def show
    @empresa = Empresa.find(params[:empresa_id])
    @informacion_empresa = @empresa.informacion_empresas.find(params[:id])
  end

  # GET /informacion_empresas/new
  def new
 #   @informacion_empresa = InformacionEmpresa.new
    @empresa = Empresa.find(params[:empresa_id])
    @informacion_empresa = @empresa.informacion_empresas.new
  end

  # GET /informacion_empresas/1/edit
  def edit
     @empresa = Empresa.find(params[:empresa_id])
     @informacion_empresa = @empresa.informacion_empresas.find(params[:id])
  end

  # POST /informacion_empresas
  # POST /informacion_empresas.json
  def create
    #@informacion_empresa = InformacionEmpresa.new(informacion_empresa_params)
  @empresa = Empresa.find(params[:empresa_id])
  @informacion_empresa = @empresa.informacion_empresas.create(informacion_empresa_params)
    respond_to do |format|
      if @informacion_empresa.save
        format.html { redirect_to empresa_informacion_empresas_path, notice: 'Informacion empresa was successfully created.' }
        format.json { render :show, status: :created, location: @informacion_empresa }
      else
        format.html { render :new }
        format.json { render json: @informacion_empresa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /informacion_empresas/1
  # PATCH/PUT /informacion_empresas/1.json
  def update
    @empresa = Empresa.find(params[:empresa_id])
    @informacion_empresa = @empresa.informacion_empresas.find(params[:id])
    respond_to do |format|
      if @informacion_empresa.update(informacion_empresa_params)
        format.html { redirect_to empresa_informacion_empresas_path, notice: 'Informacion empresa was successfully updated.' }
        format.json { render :show, status: :ok, location: @informacion_empresa }
      else
        format.html { render :edit }
        format.json { render json: @informacion_empresa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /informacion_empresas/1
  # DELETE /informacion_empresas/1.json
  def destroy
    @empresa = Empresa.find(params[:empresa_id])
    @informacion_empresa = @empresa.informacion_empresas.find(params[:id])
    @informacion_empresa.destroy
    respond_to do |format|
      format.html { redirect_to empresa_informacion_empresas_path, notice: 'Informacion empresa was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.


    # Never trust parameters from the scary internet, only allow the white list through.
    def informacion_empresa_params
      params.require(:informacion_empresa).permit(:itemTitulo)
    end
end
