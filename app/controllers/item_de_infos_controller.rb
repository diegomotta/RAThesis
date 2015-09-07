class ItemDeInfosController < ApplicationController


  # GET /item_de_infos
  # GET /item_de_infos.json
  def index
    @empresa = Empresa.find(params[:empresa_id])   
    @informacion_empresa = @empresa.informacion_empresas.find(params[:informacion_empresa_id])
    @item_de_infos = @informacion_empresa.item_de_infos
  end

  # GET /item_de_infos/1
  # GET /item_de_infos/1.json
  def show
    @empresa = Empresa.find(params[:empresa_id])
    @informacion_empresa = @empresa.informacion_empresas.find(params[:informacion_empresa_id])
    @item_de_info = @informacion_empresa.item_de_infos.find(params[:id])
  end

  # GET /item_de_infos/new
  def new
  #  @item_de_info = ItemDeInfo.new
    @empresa = Empresa.find(params[:empresa_id])   
    @informacion_empresa = @empresa.informacion_empresas.find(params[:informacion_empresa_id])
    @item_de_info = @informacion_empresa.item_de_infos.create
  end

  # GET /item_de_infos/1/edit
  def edit
    @empresa = Empresa.find(params[:empresa_id])
    @informacion_empresa = @empresa.informacion_empresas.find(params[:informacion_empresa_id])
    @item_de_info = @informacion_empresa.item_de_infos.find(params[:id])
  end

  # POST /item_de_infos
  # POST /item_de_infos.json
  def create
    @empresa = Empresa.find(params[:empresa_id])
    @informacion_empresa = @empresa.informacion_empresas.find(params[:informacion_empresa_id])
    @item_de_info = @informacion_empresa.item_de_infos.create(informacion_empresa_params)
    respond_to do |format|
      if @item_de_info.save
        format.html { redirect_to  empresa_informacion_empresa_item_de_infos_path, notice: 'Item de info was successfully created.' }
        format.json { render :show, status: :created, location: @item_de_info }
      else
        format.html { render :new }
        format.json { render json: @item_de_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /item_de_infos/1
  # PATCH/PUT /item_de_infos/1.json
  def update
    @empresa = Empresa.find(params[:empresa_id])
    @informacion_empresa = @empresa.informacion_empresas.find(params[:informacion_empresa_id])
    @item_de_info = @informacion_empresa.item_de_infos.find(params[:id])
    respond_to do |format|
      if @item_de_info.update(item_de_info_params)
        format.html { redirect_to empresa_informacion_empresa_item_de_infos_path, notice: 'Item de info was successfully updated.' }
        format.json { render :show, status: :ok, location: @item_de_info }
      else
        format.html { render :edit }
        format.json { render json: @item_de_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /item_de_infos/1
  # DELETE /item_de_infos/1.json
  def destroy
    @empresa = Empresa.find(params[:empresa_id])
    @informacion_empresa = @empresa.informacion_empresas.find(params[:informacion_empresa_id])
    @item_de_info = @informacion_empresa.item_de_infos.find(params[:id])
    @item_de_info.destroy
    respond_to do |format|
      format.html { redirect_to empresa_informacion_empresa_item_de_infos_path(@empresa,@informacion_empresa) , notice: 'Item de info was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    # Never trust parameters from the scary internet, only allow the white list through.
    def item_de_info_params
      params.require(:item_de_info).permit(:título, :descripción, :image)
    end
end
