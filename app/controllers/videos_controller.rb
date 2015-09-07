class VideosController < ApplicationController
  before_action :set_video, only: [:show, :edit, :update, :destroy]

  # GET /videos
  # GET /videos.json
  def index
    @empresa = Empresa.find(params[:empresa_id])
    @videos = @empresa.videos
    
  end

  # GET /videos/1
  # GET /videos/1.json
  def show
    @empresa = Empresa.find(params[:empresa_id])
    @video = @empresa.videos.find(params[:id]) 
  end

  # GET /videos/new
  def new
    @empresa = Empresa.find(params[:empresa_id])
    @video = @empresa.videos.new
  end

  # GET /videos/1/edit
  def edit
    @empresa = Empresa.find(params[:empresa_id])
    @video = @empresa.videos.find(params[:id]) 
  end

  # POST /videos
  # POST /videos.json
  def create
    @empresa = Empresa.find(params[:empresa_id])
    @video = @empresa.videos.create(video_params)
    respond_to do |format|
      if @video.save
        format.html { redirect_to empresa_videos_path, notice: 'Video was successfully created.' }
        format.json { render :show, status: :created, location: @video }
      else
        format.html { render :new }
        format.json { render json: @video.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /videos/1
  # PATCH/PUT /videos/1.json
  def update
    @empresa = Empresa.find(params[:empresa_id])
    @video = @empresa.videos.find(params[:id]) 
    respond_to do |format|
      if @video.update(video_params)
        format.html { redirect_to empresa_videos_path, notice: 'Video was successfully updated.' }
        format.json { render :show, status: :ok, location: @video }
      else
        format.html { render :edit }
        format.json { render json: @video.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /videos/1
  # DELETE /videos/1.json
  def destroy
    @empresa = Empresa.find(params[:empresa_id])
    @video = @empresa.videos.find(params[:id]) 
    @video.destroy
    respond_to do |format|
      format.html { redirect_to empresa_videos_path, notice: 'Video was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_video
      @video = Video.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def video_params
      params.require(:video).permit(:titulo, :url, :descripcion)
    end
end
