class NoticiaEmpresasController < ApplicationController


  # GET /noticia
  # GET /noticia.json
  def index
    @empresa = Empresa.find(params[:empresa_id])
    @noticia_empresas = @empresa.noticia_empresas
  end

  # GET /noticia/1
  # GET /noticia/1.json
  def show
    @empresa = Empresa.find(params[:empresa_id])
    @noticia_empresa = @empresa.noticia_empresas.find(params[:id])
  end

  # GET /noticia/new
  def new
    @empresa = Empresa.find(params[:empresa_id])
    @noticia_empresa = @empresa.noticia_empresas.new
  end

  # GET /noticia/1/edit
  def edit
     @empresa = Empresa.find(params[:empresa_id])
     @noticia_empresa = @empresa.noticia_empresas.find(params[:id])
  end

  # POST /noticia
  # POST /noticia.json
  def create
  @empresa = Empresa.find(params[:empresa_id])
  @noticia_empresa = @empresa.noticia_empresas.create(noticia_empresa_params)
    respond_to do |format|
      if @noticia_empresa.save
        format.html { redirect_to empresa_noticia_empresas_path(@empresa,@noticia_empresa), notice: 'Noticium was successfully created.' }
        format.json { render :show, status: :created, location: @noticia_empresa }
      else
        format.html { render :new }
        format.json { render json: @noticia_empresa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /noticia/1
  # PATCH/PUT /noticia/1.json
  def update
    @empresa = Empresa.find(params[:empresa_id])
    @noticia_empresa = @empresa.noticia_empresas.find(params[:id])
    respond_to do |format|
      if @noticia_empresa.update(noticia_empresa_params)
        format.html { redirect_to empresa_noticia_empresas_path(@empresa,@noticia_empresa), notice: 'Noticium was successfully updated.' }
        format.json { render :show, status: :ok, location: @noticia_empresa }
      else
        format.html { render :edit }
        format.json { render json: @noticia_empresa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /noticia/1
  # DELETE /noticia/1.json
  def destroy
    @empresa = Empresa.find(params[:empresa_id])
    @noticia_empresa = @empresa.noticia_empresas.find(params[:id])
    @noticia_empresa.destroy
    respond_to do |format|
      format.html { redirect_to empresa_noticia_empresas_path(@empresa,@noticia_empresa), notice: 'Noticium was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def noticia_empresa_params
      params.require(:noticia_empresa).permit(:titulo, :descripcion,:image, :empresa_id)
    end
end
