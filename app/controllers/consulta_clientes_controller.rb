class ConsultaClientesController < ApplicationController

  # GET /consulta_clientes
  # GET /consulta_clientes.json
 # def index
  #  @empresa = Empresa.find(params[:empresa_id])
   # @consulta_clientes = @empresa.consulta_clientes
  #end
 def index
      @empresa = Empresa.find(params[:empresa_id])
      @consulta_clientes = @empresa.consulta_clientes
  end
  # GET /consulta_clientes/1
  # GET /consulta_clientes/1.json
  def show
    @empresa = Empresa.find(params[:empresa_id])
    @consulta_cliente = @empresa.consulta_clientes.find(params[:id])

  end

  # GET /consulta_clientes/new
  def new
    @empresa = Empresa.find(params[:empresa_id])
    @consulta_cliente = @empresa.consulta_clientes.new(params[:consulta_cliente])
  end

  # GET /consulta_clientes/1/edit
  def edit
     @empresa = Empresa.find(params[:empresa_id])
     @consulta_cliente = @empresa.consulta_clientes.find(params[:id])    
  end

  # POST /consulta_clientes
  # POST /consulta_clientes.json
  def create
  @empresa = Empresa.find(params[:empresa_id])
  @consulta_cliente =@empresa.consulta_clientes.build(consulta_cliente_params)
  respond_to do |format|
      if @empresa.save
        format.html { redirect_to empresa_consulta_clientes_path, notice: 'Noticium was successfully created.' }
        format.json { render :show, status: :created, location: @consulta_cliente }
      else
        format.html { render :new }
        format.json { render json: @consulta_cliente.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /consulta_clientes/1
  # PATCH/PUT /consulta_clientes/1.json
  def update
    @empresa = Empresa.find(params[:empresa_id])
    @consulta_cliente = @empresa.consulta_clientes.find(params[:id])    
    respond_to do |format|
      if @consulta_cliente.update(consulta_cliente_params)
        format.html { redirect_to empresa_consulta_clientes_path, notice: 'Noticium was successfully updated.' }
        format.json { render :show, status: :ok, location: @consulta_cliente }
      else
        format.html { render :edit }
        format.json { render json: @consulta_cliente.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /consulta_clientes/1
  # DELETE /consulta_clientes/1.json
  def destroy
    @empresa = Empresa.find(params[:empresa_id])
    @consulta_cliente = @empresa.consulta_clientes.find(params[:id])    
    @consulta_cliente.destroy
    respond_to do |format|
      format.html { redirect_to empresa_consulta_clientes_path, notice: 'Noticium was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.

    # Never trust parameters from the scary internet, only allow the white list through.
    def consulta_cliente_params
      params.require(:consulta_cliente).permit(:nombre, :correo, :telefono, :descripcion)
    end
end
