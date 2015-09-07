class EmpresasController < ApplicationController

  # GET /empresas
  # GET /empresas.json
  def index
    @empresas = Empresa.all
  end

  # GET /empresas/1
  # GET /empresas/1.json
  def show
    @empresa = Empresa.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.json{render :json => @empresa.to_json(:only => [:id, :nombre, :actividad,:país ,:provincia, :localidad, :dirección, :telefono, :misión, :visión],
      :include =>{:noticia_empresas =>{:only => [:titulo, :descripcion],:methods => [:image_url]},
                  :videos =>{:only => [:titulo, :url, :descripcion]},
                  :ubicacion_geos => {:only =>[:latitude, :longitude, :address, :description, :title]},
                  :productos => { :only => [:id, :titulo],
                  :include =>{:prop_generals =>{:only =>[:id, :descripción],
                  :include =>{:prop_general_items =>{:only =>[:item, :descripción]},
                                :galeria_props=>{:only=>[:image],:methods=>[:image_url]}}},
                                :galeria_procesos =>{:only=>[:id,:título,:descrición],:methods => [:image_url]},
                                :preparar_mates=>{:only=>[:id,:título,:descrición]},
                                :galeria_prep_mates=> {:only=>[:título, :descrición,:image],:methods=>[:image_url]}}}})} 
     end
  end

  # GET /empresas/new
  def new
    @empresa = Empresa.new
  end

  # GET /empresas/1/edit
  def edit
    @empresa = Empresa.find(params[:id])
  end

  # POST /empresas
  # POST /empresas.json
  def create
    @empresa = Empresa.new(empresa_params)

    respond_to do |format|
      if @empresa.save
        format.html { redirect_to empresas_path, notice: 'Empresa was successfully created.' }
        format.json { render :show, status: :created, location: @empresa }
      else
        format.html { render :new }
        format.json { render json: @empresa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /empresas/1
  # PATCH/PUT /empresas/1.json
  def update
    @empresa = Empresa.find(params[:id])   
    respond_to do |format|
      if @empresa.update(empresa_params)
        format.html { redirect_to empresas_path, notice: 'Empresa was successfully updated.' }
        format.json { render :show, status: :ok, location: @empresa }
      else
        format.html { render :edit }
        format.json { render json: @empresa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /empresas/1
  # DELETE /empresas/1.json
  def destroy
    @empresa = Empresa.find(params[:id])
    @empresa.destroy
    respond_to do |format|
      format.html { redirect_to empresas_path, notice: 'Empresa was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.

    # Never trust parameters from the scary internet, only allow the white list through.
    def empresa_params
      params.require(:empresa).permit(:nombre, :actividad, :país, :provincia, :localidad, :dirección, :telefono,:misión,:visión,:image)
    end
end
