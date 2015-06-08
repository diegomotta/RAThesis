class GaleriaPrepMatesController < ApplicationController
  before_action :set_galeria_prep_mate, only: [:show, :edit, :update, :destroy]

  # GET /galeria_prep_mates
  # GET /galeria_prep_mates.json
  def index
    @galeria_prep_mates = GaleriaPrepMate.all
  end

  # GET /galeria_prep_mates/1
  # GET /galeria_prep_mates/1.json
  def show
  end

  # GET /galeria_prep_mates/new
  def new
    @galeria_prep_mate = GaleriaPrepMate.new
  end

  # GET /galeria_prep_mates/1/edit
  def edit
  end

  # POST /galeria_prep_mates
  # POST /galeria_prep_mates.json
  def create
    @galeria_prep_mate = GaleriaPrepMate.new(galeria_prep_mate_params)

    respond_to do |format|
      if @galeria_prep_mate.save
        format.html { redirect_to @galeria_prep_mate, notice: 'Galeria prep mate was successfully created.' }
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
    respond_to do |format|
      if @galeria_prep_mate.update(galeria_prep_mate_params)
        format.html { redirect_to @galeria_prep_mate, notice: 'Galeria prep mate was successfully updated.' }
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
    @galeria_prep_mate.destroy
    respond_to do |format|
      format.html { redirect_to galeria_prep_mates_url, notice: 'Galeria prep mate was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_galeria_prep_mate
      @galeria_prep_mate = GaleriaPrepMate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def galeria_prep_mate_params
      params.require(:galeria_prep_mate).permit(:título, :descrición, :image)
    end
end
