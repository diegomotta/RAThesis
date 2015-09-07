class UbicacionGeosController < ApplicationController


  # GET /ubicacion_geos
  # GET /ubicacion_geos.json
  def index
    @empresa = Empresa.find(params[:empresa_id])
    @ubicacion_geos = @empresa.ubicacion_geos.all
    @hash = Gmaps4rails.build_markers(@ubicacion_geos) do |ubicacion_geo, marker|
      marker.lat ubicacion_geo.latitude
      marker.lng ubicacion_geo.longitude
      marker.infowindow ubicacion_geo.title
    end
  end

  # GET /ubicacion_geos/1
  # GET /ubicacion_geos/1.json
  def show
    @empresa = Empresa.find(params[:empresa_id])
    @ubicacion_geo = @empresa.ubicacion_geos.find(params[:id]) 
    @hash = Gmaps4rails.build_markers(@ubicacion_geo) do |ubicacion_geo, marker|
      marker.lat ubicacion_geo.latitude
      marker.lng ubicacion_geo.longitude
      marker.infowindow ubicacion_geo.title
    end
  end

  # GET /ubicacion_geos/new
  def new
    @empresa = Empresa.find(params[:empresa_id])
    @ubicacion_geo = @empresa.ubicacion_geos.new
  end

  def mapComplet
    @empresa = Empresa.find(params[:empresa_id])
    @ubicacion_geos = @empresa.ubicacion_geos.all
    @hash = Gmaps4rails.build_markers(@ubicacion_geos) do |ubicacion_geo, marker|
      marker.lat ubicacion_geo.latitude
      marker.lng ubicacion_geo.longitude
      marker.title ubicacion_geo.title
    end
  end
  # GET /ubicacion_geos/1/edit
  def edit
    @empresa = Empresa.find(params[:empresa_id])
    @ubicacion_geo = @empresa.ubicacion_geos.find(params[:id]) 
  end

  # POST /ubicacion_geos
  # POST /ubicacion_geos.json
  def create
    @empresa = Empresa.find(params[:empresa_id])
    @ubicacion_geo = @empresa.ubicacion_geos.create(ubicacion_geo_params)
    respond_to do |format|
      if @ubicacion_geo.save
        format.html { redirect_to  empresa_ubicacion_geo_path(@empresa,@ubicacion_geo), notice: 'Ubicacion geo was successfully created.' }
        format.json { render :show, status: :created, location: @ubicacion_geo }
      else
        format.html { render :new }
        format.json { render json: @ubicacion_geo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ubicacion_geos/1
  # PATCH/PUT /ubicacion_geos/1.json
  def update
    @empresa = Empresa.find(params[:empresa_id])
    @ubicacion_geo = @empresa.ubicacion_geos.find(params[:id]) 
    respond_to do |format|
      if @ubicacion_geo.update(ubicacion_geo_params)
        format.html { redirect_to empresa_ubicacion_geo_path(@empresa,@ubicacion_geo), notice: 'Ubicacion geo was successfully updated.' }
        format.json { render :show, status: :ok, location: @ubicacion_geo }
      else
        format.html { render :edit }
        format.json { render json: @ubicacion_geo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ubicacion_geos/1
  # DELETE /ubicacion_geos/1.json
  def destroy
    @empresa = Empresa.find(params[:empresa_id])
    @ubicacion_geo = @empresa.ubicacion_geos.find(params[:id]) 
    @ubicacion_geo.destroy
    respond_to do |format|
      format.html { redirect_to empresa_ubicacion_geos_path(@empresa,@ubicacion_geo), notice: 'Ubicacion geo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.


    # Never trust parameters from the scary internet, only allow the white list through.
    def ubicacion_geo_params
      params.require(:ubicacion_geo).permit(:latitude, :longitude, :address, :description, :title)
    end
end
