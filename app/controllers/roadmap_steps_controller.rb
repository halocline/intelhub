class RoadmapStepsController < ApplicationController
  before_action :set_roadmap_step, only: [:show, :edit, :update, :destroy]

  # GET /roadmap_steps
  # GET /roadmap_steps.json
  def index
    @roadmap_steps = RoadmapStep.all
  end

  # GET /roadmap_steps/1
  # GET /roadmap_steps/1.json
  def show
  end

  # GET /roadmap_steps/new
  def new
    @roadmap_step = RoadmapStep.new
  end

  # GET /roadmap_steps/1/edit
  def edit
  end

  # POST /roadmap_steps
  # POST /roadmap_steps.json
  def create
    @roadmap = Roadmap.find(params[:roadmap_id])
    @roadmap_step = @roadmap.roadmap_steps.create(roadmap_step_params)
    #@roadmap_step = RoadmapStep.new(roadmap_step_params)

    respond_to do |format|
      if @roadmap_step.save
        format.html { redirect_to @roadmap, notice: 'Roadmap step was successfully created.' }
        format.json { render :show, status: :created, location: @roadmap_step }
      else
        format.html { render :new }
        format.json { render json: @roadmap_step.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /roadmap_steps/1
  # PATCH/PUT /roadmap_steps/1.json
  def update
    @roadmap = Roadmap.find(@roadmap_step.roadmap_id)

    respond_to do |format|
      if @roadmap_step.update(roadmap_step_params)
        format.html { redirect_to @roadmap, notice: 'Roadmap step was successfully updated.' }
        format.json { render :show, status: :ok, location: @roadmap_step }
      else
        format.html { render :edit }
        format.json { render json: @roadmap_step.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /roadmap_steps/1
  # DELETE /roadmap_steps/1.json
  def destroy
    @roadmap_step.destroy
    respond_to do |format|
      format.html { redirect_to roadmap_steps_url, notice: 'Roadmap step was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_roadmap_step
      @roadmap_step = RoadmapStep.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def roadmap_step_params
      params.require(:roadmap_step).permit(:step)
    end
end
