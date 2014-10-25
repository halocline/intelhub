class RoadmapDataClassesController < ApplicationController
  before_action :set_roadmap_data_class, only: [:show, :edit, :update, :destroy]

  # GET /roadmap_data_classes
  # GET /roadmap_data_classes.json
  def index
    @roadmap_data_classes = RoadmapDataClass.all
  end

  # GET /roadmap_data_classes/1
  # GET /roadmap_data_classes/1.json
  def show
  end

  # GET /roadmap_data_classes/new
  def new
    @roadmap_data_class = RoadmapDataClass.new
  end

  # GET /roadmap_data_classes/1/edit
  def edit
  end

  # POST /roadmap_data_classes
  # POST /roadmap_data_classes.json
  def create
    @roadmap_data_class = RoadmapDataClass.new(roadmap_data_class_params)

    respond_to do |format|
      if @roadmap_data_class.save
        format.html { redirect_to @roadmap_data_class, notice: 'Roadmap data class was successfully created.' }
        format.json { render :show, status: :created, location: @roadmap_data_class }
      else
        format.html { render :new }
        format.json { render json: @roadmap_data_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /roadmap_data_classes/1
  # PATCH/PUT /roadmap_data_classes/1.json
  def update
    respond_to do |format|
      if @roadmap_data_class.update(roadmap_data_class_params)
        format.html { redirect_to @roadmap_data_class, notice: 'Roadmap data class was successfully updated.' }
        format.json { render :show, status: :ok, location: @roadmap_data_class }
      else
        format.html { render :edit }
        format.json { render json: @roadmap_data_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /roadmap_data_classes/1
  # DELETE /roadmap_data_classes/1.json
  def destroy
    @roadmap_data_class.destroy
    respond_to do |format|
      format.html { redirect_to roadmap_data_classes_url, notice: 'Roadmap data class was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_roadmap_data_class
      @roadmap_data_class = RoadmapDataClass.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def roadmap_data_class_params
      params.require(:roadmap_data_class).permit(:roadmap_id, :data_class_id)
    end
end
